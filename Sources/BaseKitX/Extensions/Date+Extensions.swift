import Foundation

public extension Date {
	func plus(minutes: Int) -> Date {
		// swiftlint:disable:next force_unwrapping
		Calendar.current.date(byAdding: .minute, value: minutes, to: self)!
	}
	
	func plus(hours: Int) -> Date {
		// swiftlint:disable:next force_unwrapping
		Calendar.current.date(byAdding: .hour, value: hours, to: self)!
	}
	
	func plus(days: Int) -> Date {
		// swiftlint:disable:next force_unwrapping
		Calendar.current.date(byAdding: .day, value: days, to: self)!
	}
	
	func plus(months: Int) -> Date {
		// swiftlint:disable:next force_unwrapping
		Calendar.current.date(byAdding: .month, value: months, to: self)!
	}
	
	func plus(years: Int) -> Date {
		// swiftlint:disable:next force_unwrapping
		Calendar.current.date(byAdding: .year, value: years, to: self)!
	}
}

public extension Date {
	func minus(minutes: Int) -> Date {
		// swiftlint:disable:next force_unwrapping
		Calendar.current.date(byAdding: .minute, value: -minutes, to: self)!
	}
	
	func minus(hours: Int) -> Date {
		// swiftlint:disable:next force_unwrapping
		Calendar.current.date(byAdding: .hour, value: -hours, to: self)!
	}
	
	func minus(days: Int) -> Date {
		// swiftlint:disable:next force_unwrapping
		Calendar.current.date(byAdding: .day, value: -days, to: self)!
	}
	
	func minus(months: Int) -> Date {
		// swiftlint:disable:next force_unwrapping
		Calendar.current.date(byAdding: .month, value: -months, to: self)!
	}
	
	func minus(years: Int) -> Date {
		// swiftlint:disable:next force_unwrapping
		Calendar.current.date(byAdding: .year, value: -years, to: self)!
	}
}

public extension Date {
	var startOfDay: Date {
		Calendar.current.startOfDay(for: self)
	}
	
	var isYesterday: Bool {
		Calendar.current.isDateInYesterday(self)
	}
	
	var isToday: Bool {
		Calendar.current.isDateInToday(self)
	}
	
	var isTomorrow: Bool {
		Calendar.current.isDateInTomorrow(self)
	}
	
	var isFuture: Bool {
		self > .now
	}
	
	var isPast: Bool {
		!isFuture
	}
}

public extension Date {
	static func fromComponents(
		year: Int,
		month: Int,
		day: Int,
		hour: Int = 0,
		minute: Int = 0,
		second: Int = 0,
		timeZone: TimeZone = .current
	) -> Date {
		Calendar.current.date(
			from: DateComponents(
				timeZone: timeZone,
				year: year,
				month: month,
				day: day,
				hour: hour,
				minute: minute,
				second: second
			)
			// swiftlint:disable:next force_unwrapping
		)!
	}
}
