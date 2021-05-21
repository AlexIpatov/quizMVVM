//
//  QTipeEnum.swift
//  QuizMVVM
//
//  Created by Александр Ипатов on 21.05.2021.
//

import Foundation

enum QTipe {
    case easy, medium, hard, children

    func description() -> String {
        switch self {
        case .easy:
            return "1"
        case .medium:
            return "2"
        case .hard:
            return "3"
        case .children:
            return "4"
        }

    }
}
