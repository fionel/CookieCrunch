//
//  Chain.swift
//  CookieCrunch
//
//  Created by A12555 on 2014/07/02.
//  Copyright (c) 2014年 Cyberagent. All rights reserved.
//

class Chain: Hashable, Printable {
    var cookies = Array<Cookie>()  // private
    
    enum ChainType: Printable {
        case Horizontal
        case Vertical
        
        var description: String {
        switch self {
        case .Horizontal: return "Horizontal"
        case .Vertical: return "Vertical"
            }
        }
    }
    
    var chainType: ChainType
    
    init(chainType: ChainType) {
        self.chainType = chainType
    }
    
    func addCookie(cookie: Cookie) {
        cookies.append(cookie)
    }
    
    func firstCookie() -> Cookie {
        return cookies[0]
    }
    
    func lastCookie() -> Cookie {
        return cookies[cookies.count - 1]
    }
    
    var length: Int {
        return cookies.count
    }
    
    var description: String {
        return "type:\(chainType) cookies:\(cookies)"
    }
    
    var hashValue: Int {
        return reduce(cookies, 0) { $0.hashValue ^ $1.hashValue }
    }
}

func ==(lhs: Chain, rhs: Chain) -> Bool {
    return lhs.cookies == rhs.cookies
}