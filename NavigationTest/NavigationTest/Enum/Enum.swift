//
//  Enum.swift
//  NavigationTest
//
//  Created by Dhawal Bera on 31/01/21.
//  Copyright © 2021 Dhawal Bera. All rights reserved.
//

import SwiftUI

enum menuName: String{
    case catalogue, cart, order, favourite
    
    static func getMenuName(_ menu: menuName) -> String{
        return menu.rawValue.capitalized
    }
    
    static let menuWidth: CGFloat = 250
}
