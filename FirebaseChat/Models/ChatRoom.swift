//
//  ChatRoom.swift
//  FirebaseChat
//
//  Created by Stephanie Ballard on 6/16/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

class ChatRoom {
    
    var ref: DatabaseReference!
    
    init() {
        self.ref = Database.database().reference()
    }
    
    
}
