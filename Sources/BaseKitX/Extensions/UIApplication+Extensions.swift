//
//  UIApplication+Extensions.swift
//  BaseKitX
//
//  Created by Martin Svoboda on 13.01.2026.
//  Copyright © 2026 Freedom Martin, s.r.o. All rights reserved.
//

import UIKit

extension UIApplication {
	static func resignFirstResponder() {
		UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
	}
	
	static func openSystemSettings() {
		if let settingsURL = URL(string: openSettingsURLString) {
			shared.open(settingsURL)
		}
	}
}
