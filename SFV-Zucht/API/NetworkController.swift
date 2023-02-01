//
//  NetworkController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 01.02.23.
//

import Foundation


struct NetworkController {
    func fetchFish(complition: @escaping(Fish) -> Void) {
     

        let headers = [
            "X-RapidAPI-Key": "9b09e7ab3amsh53099bede452332p1c40c4jsn7712095637de",
            "X-RapidAPI-Host": "fish-species.p.rapidapi.com"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://fish-species.p.rapidapi.com/fish_api/fishes")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error)
            } else {
                let httpResponse = response as? HTTPURLResponse
                
                
                let decoder = JSONDecoder()
                do {
                    let fische = try decoder.decode(Fish.self, from: data!)
                    complition(fische)
                }catch {
                    print("Error API")
                }
            }
        })

        dataTask.resume()
    }
}
