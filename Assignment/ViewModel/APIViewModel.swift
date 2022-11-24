//
//  APIViewModel.swift
//  Assignment
//
//  Created by Koti Beemaneni on 24/11/22.
//

import Foundation


//struct APICall {
//    func getGitHubRepositoryList<T>(perPage: Int, searchStr: String, completionHandler: (Bool,Result<T>) -> Void) {
//                let session = URLSession.shared
//                let url = "https://api.github.com/search/repositories?per_page=\(perPage)&q=\(searchStr)"
//                let request = NSMutableURLRequest(url: NSURL(string: url)! as URL)
//                request.httpMethod = "GET"
//                request.addValue("application/vnd.github+json", forHTTPHeaderField: "Accept")
//                request.addValue("Bearer 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", forHTTPHeaderField: "Authorization")
//
//                do{
//                    let task = session.dataTask(with: request as URLRequest as URLRequest, completionHandler: {(data, response, error) in
//                        if let response = response {
//                            let nsHTTPResponse = response as! HTTPURLResponse
//                            let statusCode = nsHTTPResponse.statusCode
//                            print ("status code = \(statusCode)")
//                        }
//                        if let error = error {
//                            print ("\(error)")
//                        }
//                        if let data = data {
//                            do{
//                                let jsonResponse = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions())
//                                print ("data = \(jsonResponse)")
//                            }catch _ {
//                                print ("Oops not good JSON formatted response")
//                            }
//                        }
//                    })
//                    task.resume()
//                }
//
//    }
//}
