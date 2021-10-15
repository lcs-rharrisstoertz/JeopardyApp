//
//  QuestionService.swift
//  JeopardyApp
//
//  Created by Harris-Stoertz, Rowan on 2021-10-14.
//

import Foundation

protocol QuestionService {
    func fetchRandomQuestion() async throws -> Response
}

final class QuestionServiceImpl: QuestionService {
    func fetchRandomQuestion() async throws -> Response {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseUrl.appending("/random/api"))
        let (data, _) = try await urlSession.data(from: url!)
        do {
            return try JSONDecoder().decode(Response.self, from: data)
        } catch {
            print("Failed to decode JSON")
            print(error)
            return Response.dummyData
        }
    }
}
