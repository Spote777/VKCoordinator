//
//  Groups.swift
//  VKCoordinator
//
//  Created by Павел Заруцков on 22.11.2021.
//

import SwiftUI

struct GroupsView: View {
    @ObservedObject var viewModel: GroupViewModel
    
    init(viewModel: GroupViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        List(viewModel.groups) { group in
            NavigationLink(destination: GroupPageView(group: group)) {
                GroupRowView(group: group)
            }
        }
        .modifier(PlainList())
        .onAppear { viewModel.fetch() }
    }
}
