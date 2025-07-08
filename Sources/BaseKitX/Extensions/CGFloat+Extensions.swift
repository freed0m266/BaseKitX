import Foundation

public extension CGFloat {
	static func / (lhs: CGFloat, rhs: Int) -> CGFloat { lhs / CGFloat(rhs) }
	static func / (lhs: Int, rhs: CGFloat) -> CGFloat { CGFloat(lhs) / rhs }
	
	static func * (lhs: CGFloat, rhs: Int) -> CGFloat { lhs * CGFloat(rhs) }
	static func * (lhs: Int, rhs: CGFloat) -> CGFloat { CGFloat(lhs) * rhs }
	
	static func + (lhs: CGFloat, rhs: Int) -> CGFloat { lhs + CGFloat(rhs) }
	static func + (lhs: Int, rhs: CGFloat) -> CGFloat { CGFloat(lhs) + rhs }
	
	static func - (lhs: CGFloat, rhs: Int) -> CGFloat { lhs - CGFloat(rhs) }
	static func - (lhs: Int, rhs: CGFloat) -> CGFloat { CGFloat(lhs) - rhs }
}

public extension [CGFloat] {
	func average() -> CGFloat? {
		guard count > 0 else { return nil }
		return reduce(0, +) / CGFloat(count)
	}
}
