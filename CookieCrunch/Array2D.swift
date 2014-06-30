//
//  Array2D.swift
//  CookieCrunch
//
//  Created by A12555 on 2014/06/30.
//  Copyright (c) 2014年 Cyberagent. All rights reserved.
//

class Array2D<T> {
    let columns: Int
    let rows: Int
    let array: Array<T?>  // private
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        array = Array<T?>(count: rows*columns, repeatedValue: nil)
    }
    
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[row*columns + column]
        }
        set {
            array[row*columns + column] = newValue
        }
    }
}
