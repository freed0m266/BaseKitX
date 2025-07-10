import Foundation

public extension Decodable {
	static func decode(from data: Data) throws -> Self {
		try JSONDecoder().decode(self, from: data)
	}
}
