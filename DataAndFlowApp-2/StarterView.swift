//
//  StarterView.swift
//  DataAndFlowApp-2
//
//  Created by Mac on 09.06.2021.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject var user: UserManager
    var body: some View {
        Group {
            if user.isRegister {
                ContentView()
            } else {
                RegisteredView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
