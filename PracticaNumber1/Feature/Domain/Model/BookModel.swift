//
//  BookModel.swift
//  PracticaNumber1
//
//  Created by Moises Almeyda on 21/04/21.
//

import Foundation

protocol IBook {
    
    var id: Int { get }
    var name: String { get }
    var status: String { get }
    var species: String { get }

}

struct BookModel: IBook {
    
    var id: Int
    var name: String
    var status: String
    var species: String
    
    
}

struct ResultBooksModel {
    
    var lstBooks:[BookModel]
}
