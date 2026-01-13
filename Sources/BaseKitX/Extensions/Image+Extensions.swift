//
//  Image+Extensions.swift
//  BaseKitX
//
//  Created by Martin Svoboda on 13.01.2026.
//  Copyright © 2026 Freedom Martin, s.r.o. All rights reserved.
//

import SwiftUI

public extension Image {
	func size(_ size: CGFloat) -> some View {
		resizable()
			.frame(width: size, height: size)
	}
}
