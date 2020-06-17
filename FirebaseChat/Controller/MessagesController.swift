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
}
