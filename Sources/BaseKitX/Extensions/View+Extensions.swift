//
//  View+Extensions.swift
//  BaseKitX
//
//  Created by Martin Svoboda on 13.01.2026.
//  Copyright © 2026 Freedom Martin, s.r.o. All rights reserved.
//

import SwiftUI

public extension View {
	func maxWidthLeading() -> some View {
		frame(maxWidth: .infinity, alignment: .leading)
	}
}

public extension View {
	func hideKeyboardOnTap() -> some View {
		onTapGesture {
			UIApplication.resignFirstResponder()
		}
	}
	
	func openSystemSettings() {
		UIApplication.openSystemSettings()
	}
}

public extension View {
	func measureSize(action: @escaping (CGSize) -> Void) -> some View {
		overlay {
			GeometryReader { proxy in
				Color.clear
					.onAppear {
						action(proxy.size)
					}
			}
		}
	}
}
