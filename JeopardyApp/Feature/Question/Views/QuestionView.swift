//
//  QuestionView.swift
//  JeopardyApp
//
//  Created by Harris-Stoertz, Rowan on 2021-10-14.
//

import SwiftUI

struct QuestionView: View {
    
    let question: Question
    
    @State var answerShown = false
    
    var body: some View {
        Text("Question: \(question.question)")
            .font(.title2)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)

        if answerShown == true {
            Text("Answer: \(question.answer)")
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
        } else {
            Button(action: {
                answerShown = true
            }) {
                Text("Show answer")
                    .padding()
                    .background(Color.white)
                    .foregroundColor(Color.blue)
            }
        }
        

    }
}


//struct QuestionView_Previews: PreviewProvider {
//    static var previews: some View {
//        QuestionView(question: <#Question#>)
//    }
//}
