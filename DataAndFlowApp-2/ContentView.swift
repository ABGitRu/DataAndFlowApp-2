//
//  ContentView.swift
//  DataAndFlowApp-2
//
//  Created by Mac on 09.06.2021.
//

import SwiftUI

struct ContentView: View {
@StateObject private var timer = TimeCounter()
    @EnvironmentObject var user: UserManager
    var body: some View {
        VStack {
            Text("Hello, \(user.name)")
                .font(.largeTitle)
                .padding(.top, 40)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Spacer()
            ButtonView(timer: timer)
            Spacer()
            LogOutButton()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

struct ButtonView: View {
    @ObservedObject var timer: TimeCounter
    var body: some View {
        Button(action: timer.startTimer) {
            Text(timer.buttonTitle)
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.red)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

