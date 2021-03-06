//
//  MessagesController.swift
//  FirebaseChat
//
//  Created by Stephanie Ballard on 6/16/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import UIKit
import MessageKit
import Firebase

class MessageController {

    let baseURL = URL(string: "https://fir-chatappproject-6ded0.firebaseio.com/")!
    var ref = Database.database().reference()
    var currentUser: Sender?
    var messages: [Message] = []
    
    func fetchMessages(completion: @escaping () -> Void) {
        let requestURL = baseURL.appendingPathExtension("json")
        
        URLSession.shared.dataTask(with: requestURL) { (data, _, error) in
            
            if let error = error {
                NSLog("Error fetching message threads: \(error)")
                completion()
                return
            }
            
            guard let data = data else { NSLog("No data returned from data task"); completion(); return }
            
            do {
                self.messages = try JSONDecoder().decode([String: Message].self, from: data).map({ $0.value })
            } catch {
                self.messages = []
                NSLog("Error decoding message threads from JSON data: \(error)")
            }
            
            completion()
        }.resume()
    }
}



