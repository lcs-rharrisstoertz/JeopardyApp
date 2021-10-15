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
                if vm.question.isEmpty{
                    LoadingView(text: "Getting question")
                } else {
                    QuestionView(question: vm.question.last!.questions.first!)
                }
                Button(action: {
                    Task{
                    await getNewQuestion()
                    }
                }) {
                    Text("New question")
                        .padding()
                        .background(Color.white)
                        .foregroundColor(Color.blue)
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
