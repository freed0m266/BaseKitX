import Foundation

public extension Encodable {
	func encode() throws -> Data {
		try JSONEncoder().encode(self)
	}
}
