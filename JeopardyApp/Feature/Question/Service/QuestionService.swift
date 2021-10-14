//
//  QuestionService.swift
//  JeopardyApp
//
//  Created by Harris-Stoertz, Rowan on 2021-10-14.
//

import Foundation

protocol QuestionService {
    func fetchRandomQuestion() async throws -> [Question]
}

final class QuestionServiceImpl: QuestionService {
    func fetchRandomQuestion() async throws -> [Question] {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseUrl)
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode([Question].self, from: data)
    }
}
