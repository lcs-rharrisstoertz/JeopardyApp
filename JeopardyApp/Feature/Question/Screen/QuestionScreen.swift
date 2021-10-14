//
//  QuestionScreen.swift
//  JeopardyApp
//
//  Created by Harris-Stoertz, Rowan on 2021-10-11.
//

import SwiftUI

struct QuestionScreen: View {
    
    @StateObject private var vm = QuestionViewModelImpl(
        service: QuestionServiceImpl()
    )
    
    var body: some View {
        ZStack {
            Color(red: 0.2, green: 0.3, blue: 0.8, opacity: 1.0)
                .ignoresSafeArea()
            VStack {
                Text(vm.question)
                    .font(.title)
                    .fontWeight(.semibold)
                Button(action: {
                    // code to display answer goes here
                }) {
                    Text("Show answer")
                        .padding()
                        .background(Color.white)
                        .foregroundColor(Color.blue)
                }
                Text("Answer")
                    .font(.title2)
                    .fontWeight(.semibold)
            }
            .task {
                await vm.getRandomQuestion()
            }
            .foregroundColor(Color.white)
        }
    }
}

struct QuestionScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuestionScreen()
    }
}
