//
//  Modifiers.swift
//  Audio Chromo
//
//  Created by Will Hustle on 4/23/20.
//  Copyright © 2020 Will Hustle. All rights reserved.
//

import SwiftUI

struct ShadowModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
        .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
    }
}
struct FontModifier : ViewModifier {
    var style : Font.TextStyle = .body
    
    func body(content: Content) -> some View {
        content
            .font(.system(style, design: .default))
    }
}

struct CustomFontModifier : ViewModifier {
    func body(content: Content) -> some View {
        content.font(.custom("Lato-Regular", size: 28))
    }
}
