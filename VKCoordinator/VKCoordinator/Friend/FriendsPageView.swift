//
//  FriendPageView.swift
//  VKCoordinator
//
//  Created by Павел Заруцков on 22.11.2021.
//

import SwiftUI
import Kingfisher

struct FriendPageView: View {
    var friend: FriendItem
    var body: some View {
        VStack {
            AvatarImage { KFImage(URL(string: friend.photo100!)!) }
            
            Text("\(friend.firstName) \(friend.lastName)")
                .modifier(TitleText())
            
            Spacer().frame(height: 50.0)
                        
            Spacer()
        }.padding()
    }
}
