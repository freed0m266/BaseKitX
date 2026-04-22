import Foundation

public extension Decodable {
	static func decode(from data: Data) throws -> Self {
		try JSONCoding.decoder.decode(self, from: data)
	}
}
