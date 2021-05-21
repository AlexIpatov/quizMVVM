//
//  DataFetcherService.swift
//  QuizMVVM
//
//  Created by Александр Ипатов on 21.05.2021.
//

import Foundation

class DataFetcherService {
    private(set) lazy var urlConstructor: URLComponents = {
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "engine.lifeis.porn"
        return urlComponents
    }()

    var networkDataFetcher: DataFetcher

    init(networkDataFetcher: DataFetcher = NetworkDataFetcher()) {
        self.networkDataFetcher = networkDataFetcher
    }
    func fetchTopNews(qType: QTipe,
                      qCount: String = "5",
                         completion: @escaping (QuestResult?) -> Void) {
        urlConstructor.path = "/api/millionaire.php"
        urlConstructor.queryItems = [
            URLQueryItem(name: "qType", value: qType.description()),
            URLQueryItem(name: "count", value: qCount),

        ]
        guard let url = urlConstructor.url else { return }
        print(url)
        networkDataFetcher.fetchGenericJSONData(url: url, response: completion)
    }
}
