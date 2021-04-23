//
//  LiveData.swift
//  PracticaNumber1
//
//  Created by Moises Almeyda on 22/04/21.
//

import Foundation


class Box<T> {
    typealias Listener = (T) -> Void
    var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_value: T) {
        self.value = _value
    }
    
    func observe(listener: Listener?) {
        self.listener = listener
        self.listener?(value)
    }
}
