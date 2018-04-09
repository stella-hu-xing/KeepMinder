//
//  Item.swift
//  KeepMinder
//
//  Created by Xing Hu
//  Copyright © 2018 Stella Hu. All rights reserved.
//

import Foundation

class Item: NSObject {
    let content: String
    let isFinished: Bool
    
    init(content: String, isFinished: Bool) {
        self.content = content
        self.isFinished = isFinished
    }
    
}




