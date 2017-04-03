//
//  User.swift
//  session2-demo
//
//  Created by Shannon Phu on 4/2/17.
//  Copyright © 2017 Shannon Phu. All rights reserved.
//

import UIKit

class User: NSObject {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
