//
//  HomeVC.swift
//  NavigationTest
//
//  Created by Dhawal Bera on 31/01/21.
//  Copyright © 2021 Dhawal Bera. All rights reserved.
//

import SwiftUI

struct HomeVC: View {
    
    @ObservedObject var menuData: MenuViewModel = MenuViewModel()
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        HStack{
            
            DrawerView()
            
            TabView(selection: $menuData.selectedMenu) {
                
                Catlogue()
                    .tag(menuName.getMenuName(.catalogue))
                
                Order()
                    .tag(menuName.getMenuName(.order))
                
                Cart()
                    .tag(menuName.getMenuName(.cart))
                
                Favourites()
                    .tag(menuName.getMenuName(.favourite))
            }
            .frame(width: UIScreen.main.bounds.width)
        }
        .frame(width: UIScreen.main.bounds.width)
        .offset(x: self.menuData.showDrawer ? (menuName.menuWidth / 2) : -(menuName.menuWidth / 2))
        .overlay(
            ZStack{
                if !menuData.showDrawer{
                    DrawerCloseButton()
                        .padding()
                }
            },alignment: .topLeading
        )
            
        .environmentObject(menuData)
    }
}

struct HomeVC_Previews: PreviewProvider {
    static var previews: some View {
        HomeVC()
    }
}
