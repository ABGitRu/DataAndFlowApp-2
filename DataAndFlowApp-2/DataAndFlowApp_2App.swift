//
//  DataAndFlowApp_2App.swift
//  DataAndFlowApp-2
//
//  Created by Mac on 09.06.2021.
//

import SwiftUI

@main
struct DataAndFlowApp_2App: App {
@StateObject private var user = UserManager()
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(user)
        }
        
    }
    

}
