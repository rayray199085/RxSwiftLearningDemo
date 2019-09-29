//
//  FilterModel.swift
//  RxSwiftLearningDemo
//
//  Created by Stephen Cao on 29/9/19.
//  Copyright © 2019 Stephen Cao. All rights reserved.
//

import Foundation

struct FilterModel: CustomStringConvertible{
    var description: String{
        return "value: \(value) --- name: \(name)"
    }
    
    let value: Int
    let name: String
}
