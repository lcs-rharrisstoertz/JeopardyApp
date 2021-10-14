//
//  QuestionView.swift
//  JeopardyApp
//
//  Created by Harris-Stoertz, Rowan on 2021-10-14.
//

import SwiftUI

struct QuestionView: View {
    
    let question: Question
    
    var body: some View {
        Text(question.question)
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
        Text(question.answer)
            .font(.title2)
            .fontWeight(.semibold)
    }
}

//struct QuestionView_Previews: PreviewProvider {
//    static var previews: some View {
//        QuestionView(question: <#Question#>)
//    }
//}
