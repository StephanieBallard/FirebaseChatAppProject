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

struct Message: MessageType {
    var kind: MessageKind
    var sender: SenderType
    var messageId: String
    var sentDate: Date
}

struct Sender: SenderType {
    var senderId: String
    var displayName: String
}

//struct Kind: Codable, MessageKind {
//    var text: String
//    var emoji: String
//}
