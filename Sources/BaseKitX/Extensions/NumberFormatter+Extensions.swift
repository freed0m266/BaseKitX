import Foundation

public extension NumberFormatter {
	func string(from number: Int) -> String? {
		string(from: NSNumber(value: number))
	}
	
	func string(from double: Double) -> String? {
		string(from: NSNumber(value: double))
	}
}
