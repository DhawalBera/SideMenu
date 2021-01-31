//
//  MenuViewModel.swift
//  NavigationTest
//
//  Created by Dhawal Bera on 31/01/21.
//  Copyright © 2021 Dhawal Bera. All rights reserved.
//

import SwiftUI

class MenuViewModel: ObservableObject{
    
    @Published var selectedMenu = "Catalogue"
    
    @Published var showDrawer = false
}
