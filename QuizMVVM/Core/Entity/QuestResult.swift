//
//  QuestResult.swift
//  QuizMVVM
//
//  Created by Александр Ипатов on 21.05.2021.
//

import Foundation

// MARK: - QuestResult
struct QuestResult: Codable {
    let ok: Bool
    let data: [Datum]
    let amount: Int
}

// MARK: - Datum
struct Datum: Codable {
    let question: String
    let answers: [String]
    let id: Int
}
