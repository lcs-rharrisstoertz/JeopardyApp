//
//  QuestionView.swift
//  JeopardyApp
//
//  Created by Harris-Stoertz, Rowan on 2021-10-14.
//

import SwiftUI

struct QuestionView: View {
    
    let question: Response
    
    @State var answerShown = false
    
    var body: some View {
        Text("\(question.question.uppercased())")
            .font(.title2)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .padding()
        
        if answerShown == true {
            Text("ANSWER: \(question.answer.uppercased())")
                .font(.title2)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding()
        } else {
            Button(action: {
                answerShown = true
            }) {
                Text("Show answer")
                    .fontWeight(.medium)
                    .padding()
                    .frame(width: 250.0)
                    .background(Color.white)
                    .foregroundColor(Color(red: 0.05, green: 0.078, blue: 0.62, opacity: 1.0))
            }
        }
        
        
    }
}


//struct QuestionView_Previews: PreviewProvider {
//    static var previews: some View {
//        QuestionView(question: <#Question#>)
//    }
//}
