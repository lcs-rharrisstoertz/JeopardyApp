//
//  QuestionViewModel.swift
//  JeopardyApp
//
//  Created by Harris-Stoertz, Rowan on 2021-10-14.
//

import Foundation

protocol QuestionViewModel: ObservableObject {
    func getRandomQuestion() async
}

@MainActor
final class QuestionViewModelImpl: QuestionViewModel {
    
    @Published private(set) var question: [Question] = []
    
    private let service:QuestionService
    
    init(service: QuestionService) {
        self.service = service
    }
    
    func getRandomQuestion() async {
        do {
            self.question = try await service.fetchRandomQuestion()
        } catch {
            print(error)
        }
    }
    
}
