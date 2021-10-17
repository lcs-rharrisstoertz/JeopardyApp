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
            //            Color(red: 0.031, green: 0.078, blue: 0.52, opacity: 1.0)
            //                .ignoresSafeArea()
            RadialGradient(gradient: Gradient(colors: [Color(red: 0.05, green: 0.078, blue: 0.62, opacity: 1.0), Color(red: 0.031, green: 0.078, blue: 0.32, opacity: 1.0)]), center: .center, startRadius: 100, endRadius: 300)
                .ignoresSafeArea()
            
            VStack {
                if vm.question.isEmpty{
                    LoadingView(text: "Getting question")
                } else {
                    QuestionView(question: vm.question.last!)
                }
                Button(action: {
                    Task{
                        await getNewQuestion()
                    }
                }) {
                    Text("New question")
                        .fontWeight(.medium)
                        .padding()
                        .frame(width: 250.0)
                        .background(Color.white)
                        .foregroundColor(Color(red: 0.05, green: 0.078, blue: 0.62, opacity: 1.0))
                }
            }
            .task {
                await vm.getRandomQuestion()
            }
            .foregroundColor(Color.white)
        }
    }
    
    func getNewQuestion() async {
        await vm.getRandomQuestion()
    }
    
}

struct QuestionScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuestionScreen()
    }
}
