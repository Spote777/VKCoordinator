//
//  Modifiers.swift
//  VKCoordinator
//
//  Created by Павел Заруцков on 22.11.2021.
//

import SwiftUI

struct PlainList: ViewModifier {
    func body(content: Content) -> some View {
        content
            .listStyle(.plain)
    }
}

struct TitleText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 22, weight: .light))
            .foregroundColor(.primary)
    }
}

struct SubTitleText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16, weight: .light))
            .foregroundColor(.secondary)
            .padding(.top, -5)
    }
}

struct OfflineText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16, weight: .light))
            .foregroundColor(.secondary)
            .padding(.top, -5)
    }
}

struct OnlineText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16, weight: .light))
            .foregroundColor(.green)
            .padding(.top, -5)
    }
}

struct StandardAvatarImage: ViewModifier {
    func body(content: Content) -> some View {
        content
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
    }
}
