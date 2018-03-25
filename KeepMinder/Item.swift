//
//  Item.swift
//  KeepMinder
//
//  Created by Xing Hu on 25/3/18.
//  Copyright © 2018 Stella Hu. All rights reserved.
//

import Foundation

struct Item {
    
    let Id : Int
    let content : String
    let isFinished : Bool
    
    static let allItems = [
        Item(Id: 0, content: "Tomorrow's meeting", isFinished: false),
        Item(Id: 1, content: "Friday meeting", isFinished: false),
        Item(Id: 2, content: "Next week exam", isFinished: false)
    ]
}

//extension Item: CustomStringConvertible {
//    var description: String {
//        return "\"\(text)\" — \(author)"
//    }
//}

