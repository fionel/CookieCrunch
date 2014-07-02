//
//  Swap.swift
//  CookieCrunch
//
//  Created by A12555 on 2014/07/01.
//  Copyright (c) 2014年 Cyberagent. All rights reserved.
//

class Swap: Printable, Hashable {
    var cookieA: Cookie
    var cookieB: Cookie
    var hashValue: Int {
        return cookieA.hashValue ^ cookieB.hashValue
    }
    
    init(cookieA: Cookie, cookieB: Cookie) {
        self.cookieA = cookieA
        self.cookieB = cookieB
    }
    
    var description: String {
    return "swap \(cookieA) with \(cookieB)\n"
    }
}

func ==(lhs: Swap, rhs: Swap) -> Bool {
    return (lhs.cookieA == rhs.cookieA && lhs.cookieB == rhs.cookieB) ||
        (lhs.cookieB == rhs.cookieA && lhs.cookieA == rhs.cookieB)
}

