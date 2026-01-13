//
//  String+Extensions.swift
//  BaseKitX
//
//  Created by Martin Svoboda on 13.01.2026.
//  Copyright © 2026 Freedom Martin, s.r.o. All rights reserved.
//

import Foundation
import UIKit

public extension String {
	var withoutWhitespace: String {
		replacingOccurrences(of: "\\s", with: "", options: .regularExpression)
	}
}

public extension String {
	func copyToClipboard() {
		UIPasteboard.general.string = self
	}
}
