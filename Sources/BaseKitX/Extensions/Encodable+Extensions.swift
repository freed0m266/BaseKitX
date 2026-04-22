import Foundation

public extension Encodable {
	func encode() throws -> Data {
		try JSONCoding.encoder.encode(self)
	}
}
