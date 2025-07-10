import Foundation

public extension Data {
	var jsonString: String {
		guard
			let json = jsonAny,
			let data = try? JSONSerialization.data(withJSONObject: json, options: [.prettyPrinted]),
			let string = String(data: data, encoding: .utf8)
		else {
			return String(data: self, encoding: .utf8) ?? "❌"
		}
		
		return string
	}
	
	private var jsonAny: Any? {
		try? JSONSerialization.jsonObject(with: self)
	}
}
