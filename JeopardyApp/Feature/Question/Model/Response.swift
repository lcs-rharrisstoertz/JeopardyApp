//
//  Response.swift
//  JeopardyApp
//
//  Created by Harris-Stoertz, Rowan on 2021-10-15.
//

import Foundation

struct Response: Decodable {
    let answer: String
    let question: String
}

extension Response {
    static let dummyData: [Response] = [
        Response(answer: "lead (sample answer)", question: "Franklin noted that the complaint called \"dry-gripes\" resulted from exposure to this toxic metal (sample question)")]
}
