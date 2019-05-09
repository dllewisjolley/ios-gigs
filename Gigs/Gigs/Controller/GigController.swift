//
//  GigController.swift
//  Gigs
//
//  Created by Diante Lewis-Jolley on 5/9/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

class GigController {

    var gigs: [Gig] = []
    var bearer: Bearer?
    private let baseUrl = URL(string: "https://lamdagigs.vapor.cloud/api")!

    func signUp(with user: User, completion: @escaping (Error?) -> ()) {

        let signUpUrl = baseUrl.appendingPathComponent("users/signup")

        var request = URLRequest(url: signUpUrl)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let encoder = JSONEncoder()

        do {
            let data = try encoder.encode(user)
            request.httpBody = data

        } catch {
            NSLog("Error encoding user object: \(error)")
            completion(error)
            return
        }

        URLSession.shared.dataTask(with: request) { (_, response, error) in
            if let response = response as? HTTPURLResponse,
                response.statusCode != 200 {
                completion(NSError(domain: "<#T##String#>", code: response.statusCode, userInfo: nil))
                return
            }

            if let error = error {
                completion(error)
                return
            }

            completion(nil)

            }.resume()
    }

    func LogIn(with user: User, completion: @escaping (Error?) -> Void) {

        let loginURL = baseUrl.appendingPathComponent("users/login")

        var request = URLRequest(url: loginURL)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        let encoder = JSONEncoder()

        do {
            let data = try encoder.encode(user)
            request.httpBody = data


        } catch {
            NSLog("Error decoding log in object: \(error)")
            completion(error)
            return
        }

        URLSession.shared.dataTask(with: request) { (data, response, error) in

            if let response = response as? HTTPURLResponse {
                response.statusCode != 200 {
                    completion(NSError(domain: "", code: response.statusCode, userInfo: nil))
                    return
                }

                if let error = error {
                    completion(error)
                    return
                }

                guard let data = data else {
                    completion(NSError())
                    return
                }

                let decoder = JSONDecoder()
                
                do {
                    self.bearer = try decoder.decode(Bearer.self, from: data)

                } catch {
                    NSLog("Error decoding bearer Object: \(error)")
                    completion(error)
                    return
                }
                completion(nil)

            }

            }.resume()
    }







}
