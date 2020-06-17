//
//  Message.swift
//  FirebaseChat
//
//  Created by Stephanie Ballard on 6/16/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import Foundation
import Firebase
import MessageKit

class Message: Decodable, MessageType, Equatable {
    
    var text: String
    var sender: SenderType
    var messageId: String
    var sentDate: Date
    
    var kind: Decodable, MessageKind {
        return .text(text)
    }

}

struct Sender: Codable, SenderType {
    var senderId: String {
        return UUID().uuidString
    }
    var displayName: String
}


