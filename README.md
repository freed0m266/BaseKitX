# BaseKitX

[![Swift](https://img.shields.io/badge/Swift-5.9-orange.svg)](https://swift.org)
[![SPM Compatible](https://img.shields.io/badge/SPM-Compatible-brightgreen.svg)](https://swift.org/package-manager/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Release](https://img.shields.io/github/v/release/freed0m266/BaseKitX)](https://github.com/freed0m266/BaseKitX/releases)

A lightweight collection of Swift extensions and utilities for iOS development.  
Created to simplify common operations and reduce boilerplate in everyday code.

## 📦 Installation

### Swift Package Manager

Add this package to your project in `Package.swift`:

```swift
.package(
    url: "https://github.com/freed0m266/BaseKitX.git",
    from: "1.1.0"
)
```

Then import where needed:

```swift
import BaseKitX
```

## ✨ Features

- `CGFloat` math operators with `Int`
- `CGFloat.formatted(...)` for numeric precision
- `[CGFloat].average()` helper
- `Array` helpers for sorting by key path
- `Data.jsonString` for printing JSON
- `Encodable.encode()` and `Decodable.decode(...)`
- `NumberFormatter.string(from:)` shortcuts

More extensions coming soon...

---

## 🛠 Requirements

- iOS 16+
- Swift 5.9+

---

## 📄 License

Released under the [MIT License](LICENSE).
