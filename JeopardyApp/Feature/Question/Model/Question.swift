//
//  Question.swift
//  JeopardyApp
//
//  Created by Harris-Stoertz, Rowan on 2021-10-11.
//

import Foundation

struct Question: Codable {
    let answer: String
    let question: String
}

//[
//   {
//      "id":41746,
//      "answer":"the New York Yankees",
//      "question":"(Johnny Gilbert reads.) Drake revealing Emily didn't kill Carson, got her out of jail in time to see this team win the 2000 World Series",
//      "value":200,
//      "airdate":"2001-06-22T12:00:00.000Z",
//      "created_at":"2014-02-11T23:10:55.162Z",
//      "updated_at":"2014-02-11T23:10:55.162Z",
//      "category_id":5082,
//      "game_id":null,
//      "invalid_count":null,
//      "category":{
//         "id":5082,
//         "title":"jeopardy! place",
//         "created_at":"2014-02-11T23:10:54.880Z",
//         "updated_at":"2014-02-11T23:10:54.880Z",
//         "clues_count":30
//      }
//   }
