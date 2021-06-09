//
//  RegistredView.swift
//  DataAndFlowApp-2
//
//  Created by Mac on 09.06.2021.
//

import SwiftUI

struct RegisteredView: View {
    @State private var name = ""
    @State private var isActive = false
    @State private var textColor = Color.red
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("ENTER YOUR NAME", text: $name)
                    .multilineTextAlignment(.center)
                    .onChange(of: name) {
                        isActive = $0.count <= 2 ? true : false
                        textColor = $0.count <= 2 ? .red : .green
                }
                Text("\(name.count)")
                    .font(.system(size: 24))
                    .fontWeight(.light)
                    .foregroundColor(textColor)
                    .padding()
            }
                
            Button(action: registerUser)  {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK ")
                }
            }
            .disabled(isActive)
            .onAppear() {
                isActive.toggle()
            }
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
}

struct RegisteredView_Previews: PreviewProvider {
    static var previews: some View {
        RegisteredView()
    }
}
