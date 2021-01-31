//
//  DrawerCloseButton.swift
//  NavigationTest
//
//  Created by Dhawal Bera on 31/01/21.
//  Copyright © 2021 Dhawal Bera. All rights reserved.
//

import SwiftUI

struct DrawerCloseButton: View {
    
    @EnvironmentObject var menuData: MenuViewModel
    //@ObservedObject var menuData: MenuViewModel = MenuViewModel()
    
    var body: some View {
        
        Button(action: {
            withAnimation {
                self.menuData.showDrawer.toggle()
            }
        }) {
            
            VStack(spacing: 5){
                
                Capsule()
                    .fill(self.menuData.showDrawer ? Color.white : Color.primary)
                    .frame(width:35, height: 3)
                    .rotationEffect(.init(degrees: self.menuData.showDrawer ? -50 : 0))
                    .offset(x: self.menuData.showDrawer ? 2 : 0, y: self.menuData.showDrawer ? 9 : 0)
                
                VStack(spacing: 5){
                    
                    Capsule()
                        .fill(self.menuData.showDrawer ? Color.white : Color.primary)
                        .frame(width:35, height: 3)
                    
                    Capsule()
                        .fill(self.menuData.showDrawer ? Color.white : Color.primary)
                        .frame(width:35, height: 3)
                        .offset(y: self.menuData.showDrawer ? -8 : 0)
                }
                .rotationEffect(.init(degrees: self.menuData.showDrawer ? 50 : 0))
            }
        }
        .scaleEffect(0.8)
    }
}

struct DrawerCloseButton_Previews: PreviewProvider {
    static var previews: some View {
        DrawerCloseButton()
    }
}
