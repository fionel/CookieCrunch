//
//  Swap.swift
//  CookieCrunch
//
//  Created by A12555 on 2014/07/01.
//  Copyright (c) 2014年 Cyberagent. All rights reserved.
//

class Swap: Printable {
    var cookieA: Cookie
    var cookieB: Cookie
    
    init(cookieA: Cookie, cookieB: Cookie) {
        self.cookieA = cookieA
        self.cookieB = cookieB
    }
    
    var description: String {
    return "swap \(cookieA) with \(cookieB)"
    }
}

