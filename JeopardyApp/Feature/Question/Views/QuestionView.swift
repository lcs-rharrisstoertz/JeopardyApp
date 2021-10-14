//
//  QuestionView.swift
//  JeopardyApp
//
//  Created by Harris-Stoertz, Rowan on 2021-10-14.
//

import SwiftUI

struct QuestionView: View {
    
    let question: Question
    
    var answerShown = false
    
    var body: some View {
        Text(question.question)
            .font(.title)
            .fontWeight(.semibold)

        if answerShown == true {
            Text(question.answer)
                .font(.title2)
                .fontWeight(.semibold)
        } else {
            Button(action: {
                // code to display answer goes here
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
