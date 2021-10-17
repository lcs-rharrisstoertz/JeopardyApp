//
//  Response.swift
//  JeopardyApp
//
//  Created by Harris-Stoertz, Rowan on 2021-10-15.
//

import Foundation

struct Response: Decodable {
    let questions: [Question]
}

extension Response {
    static let dummyData: [Response] = [
        Response(questions: [Question(answer: "lead (sample answer)", question: "Franklin noted that the complaint called \"dry-gripes\" resulted from exposure to this toxic metal (sample question)")])]
}
