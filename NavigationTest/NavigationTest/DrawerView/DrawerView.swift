//
//  DrawerView.swift
//  NavigationTest
//
//  Created by Dhawal Bera on 31/01/21.
//  Copyright © 2021 Dhawal Bera. All rights reserved.
//

import SwiftUI

struct DrawerView: View {
    
    @EnvironmentObject var menuData: MenuViewModel
    
    var body: some View {
        VStack{
            
            HStack{
                
                Image("mona")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:70, height: 70)
                    .clipShape(Circle())
                
                Spacer()
                
                if self.menuData.showDrawer{
                    DrawerCloseButton()
                }
            }
            .padding()
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Hello")
                    .font(.headline)
                
                Text("Monalisa")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .foregroundColor(.white)
            .frame(maxWidth:.infinity, alignment: .leading)
            .padding(.horizontal)
            .padding(.top, 5)
            
            VStack(spacing: 22){
                
                MenuButton(name: menuName.getMenuName(.catalogue), image: "envelope.fill", selectedMenu: $menuData.selectedMenu)
                
                MenuButton(name: menuName.getMenuName(.cart), image: "bag.fill", selectedMenu: $menuData.selectedMenu)
                
                MenuButton(name: menuName.getMenuName(.favourite), image: "suit.heart.fill", selectedMenu: $menuData.selectedMenu)
                
                MenuButton(name: menuName.getMenuName(.order), image: "circle.fill", selectedMenu: $menuData.selectedMenu)
            }
            .padding(.leading)
            .frame(width: menuName.menuWidth, alignment:.leading)
            .padding(.top, 30)
            
            Divider()
            .background(Color.white)
            .padding(.top, 30)
            .padding(.horizontal, 25)
            
            Spacer()
            
            MenuButton(name: "Sign Out", image: "circle.fill", selectedMenu: .constant(""))
                .padding(.bottom)
        }
        .frame(width: menuName.menuWidth)
        .background(
            Color("colormenubg")
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct DrawerView_Previews: PreviewProvider {
    static var previews: some View {
        DrawerView()
    }
}
