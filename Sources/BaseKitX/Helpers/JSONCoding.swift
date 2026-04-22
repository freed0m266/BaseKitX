import Foundation

struct JSONCoding {
	// .withInternetDateTime includes the timezone formatted as ±HH:MM (e.g. +01:00 or -05:00).
	// .withFractionalSeconds includes the fractional seconds (e.g. .789)
	// Combined, the formatter expects dates like: 2023-10-05T12:34:56.789+01:00.
	private static func makeISO8601Formatter(withFractionalSeconds: Bool) -> ISO8601DateFormatter {
		let formatter = ISO8601DateFormatter()
		
		if withFractionalSeconds {
			formatter.formatOptions = [
				.withInternetDateTime,
				.withFractionalSeconds,
				.withTimeZone
			]
		} else {
			formatter.formatOptions = [
				.withInternetDateTime,
				.withTimeZone
			]
		}
		return formatter
	}
	
	static let decoder: JSONDecoder = {
		let decoder = JSONDecoder()
		
		decoder.dateDecodingStrategy = .custom { decoder in
			let container = try decoder.singleValueContainer()
			let dateString = try container.decode(String.self)
			let iso8601Formatter = makeISO8601Formatter(withFractionalSeconds: false)
			let iso8601FormatterWithFractionalSeconds = makeISO8601Formatter(withFractionalSeconds: true)
			
			// withFractionalSeconds require fractional seconds
			// in decoded date so both formats have to be tried
			let formatters = [iso8601Formatter, iso8601FormatterWithFractionalSeconds]
			for formatter in formatters {
				if let date = formatter.date(from: dateString) {
					return date
				}
			}
			
			throw DecodingError.dataCorruptedError(in: container, debugDescription: "Invalid date format")
		}
		
		return decoder
	}()
	
	static let encoder: JSONEncoder = {
		let encoder = JSONEncoder()
		
		encoder.dateEncodingStrategy = .custom { date, encoder in
			var container = encoder.singleValueContainer()
			let iso8601FormatterWithFractionalSeconds = makeISO8601Formatter(withFractionalSeconds: false)
			
			// use fractional seconds formatter to not lose precision
			let dateString = iso8601FormatterWithFractionalSeconds.string(from: date)
			try container.encode(dateString)
		}
		
		return encoder
	}()
}
