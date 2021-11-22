//
//  TabView.swift
//  VKCoordinator
//
//  Created by Павел Заруцков on 22.11.2021.
//

import SwiftUI

struct MainTabBarView: View {
    var viewModel: LoginViewModel

    private let tabs = ["Друзья", "Группы"]
    
    var body: some View {
        TabView {
            FriendsView(viewModel: FriendViewModel(FriendAPI(viewModel: viewModel)))
                .navigationBarTitle("", displayMode: .inline)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text(tabs[0])
                }


            GroupsView(viewModel: GroupViewModel(GroupAPI(viewModel: viewModel)))
                .navigationBarTitle("", displayMode: .inline)
                .tabItem {
                    Image(systemName: "bookmark.circle.fill")
                    Text(tabs[1])
                }
        }.navigationBarBackButtonHidden(true)
    }
}
