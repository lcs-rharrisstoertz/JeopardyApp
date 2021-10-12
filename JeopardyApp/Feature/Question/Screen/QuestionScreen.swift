//
//  QuestionScreen.swift
//  JeopardyApp
//
//  Created by Harris-Stoertz, Rowan on 2021-10-11.
//

import SwiftUI

struct QuestionScreen: View {
    var body: some View {
        ZStack {
            Color(red: 0.2, green: 0.3, blue: 0.8, opacity: 1.0)
                .ignoresSafeArea()
            Text("Question goes here")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
        }
    }
}

struct QuestionScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuestionScreen()
    }
}
