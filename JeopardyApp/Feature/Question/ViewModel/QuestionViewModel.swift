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
    
    @Published private(set) var question: [Response] = []
    
    private let service:QuestionService
    
    init(service: QuestionService) {
        self.service = service
    }
    
    func getRandomQuestion() async {
        do {
            let newQuestion = try await service.fetchRandomQuestion()
            
            question.append(newQuestion)
        } catch {
            print(error)
        }
    }
}
