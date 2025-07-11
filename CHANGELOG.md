# Changelog

All notable changes to this project will be documented in this file.

## [1.2.0] - 2025-07-11
### Added
- Extensions for `Date` with `plus` and `minus` methods for minutes, hours, days, months, and years, along with boolean properties `isYesterday`, `isToday`, `isTomorrow`, `isFuture`, and `isPast`.
- `Date.fromComponents(year:month:day:hour:minute:second:timeZone:)` initializer for constructing `Date` from components.

## [1.1.0] - 2025-07-10
### Added
- Swift Package Manager README instructions
- Xcode project and schemes
- InfoPlist for framework and tests
- Extensions for `Array`, `Data`, `Decodable`, `Encodable`, and `NumberFormatter`
- `CGFloat.formatted` helper
- Basic XCTest target

### Removed
- Old placeholder tests

### Fixed
- Package tests build correctly
