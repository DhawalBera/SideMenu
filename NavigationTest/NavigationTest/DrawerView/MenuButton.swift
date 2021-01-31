//
//  MenuButton.swift
//  NavigationTest
//
//  Created by Dhawal Bera on 31/01/21.
//  Copyright © 2021 Dhawal Bera. All rights reserved.
//

import SwiftUI

struct MenuButton: View {
    
    var name: String
    var image: String
    @Binding var selectedMenu: String
    
    //@EnvironmentObject var menuData:MenuViewModel
    
    var body: some View {
        
        Button(action: {
            withAnimation {
                self.selectedMenu = self.name
                /*DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    withAnimation {
                        self.menuData.showDrawer.toggle()
                    }
                }*/
            }
        }) {
            
            HStack{
                
                Image(systemName: image)
                    .font(.headline)
                    .foregroundColor(selectedMenu == name ? .black : .white)
                
                Text(name)
                    .foregroundColor(selectedMenu == name ? .black : .white)
                
                if selectedMenu == name{
                    Spacer()
                    
                    CheckMarkView().frame(width: 20, height: 20)
                }
                
            }
            .padding(.horizontal)
            .padding(.vertical, 12)
            .frame(width: menuName.menuWidth - 50, alignment: .leading)
            .background(
                ZStack{
                    if selectedMenu == name{
                        Color.white
                            .cornerRadius(10)
                    }else{
                        Color.clear
                    }
                }
            )
        }
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton(name: "Menu", image: "circle.fill", selectedMenu: .constant("Menu"))
    }
}
