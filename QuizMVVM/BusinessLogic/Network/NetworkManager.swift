//
//  NetworkManager.swift
//  QuizMVVM
//
//  Created by Александр Ипатов on 21.05.2021.
//

import Foundation

protocol Networking {
    func request(url: URL, completion: @escaping (Data?, Error?) -> Void)
}
class NetworkService: Networking {
    func request(url: URL, completion: @escaping (Data?, Error?) -> Void) {
        let request = URLRequest(url: url)
        let task = createDataTask(from: request, completion: completion)
        task.resume()
    }
    private func createDataTask(from requst: URLRequest,
                                completion: @escaping (Data?, Error?) -> Void) -> URLSessionDataTask {
        return URLSession.shared.dataTask(with: requst,
                                          completionHandler: { (data, _, error) in
            DispatchQueue.main.async {
                completion(data, error)
            }
        })
    }
}
