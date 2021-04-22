//
//  Model.swift
//  PracticaNumber1
//
//  Created by Moises Almeyda on 20/04/21.
//

import Foundation

struct BooksReponse: Decodable {
    
    let information: InformationResponse
    let resultsResponse: [ItemResponse]
 
    private enum CodingKeys: String, CodingKey {
        case information = "info"
        case resultsResponse = "results"
    }
    
}


struct InformationResponse: Decodable {
    let count:Int
    let pages:Int
    let next: String
    let prev: String?
    
}

struct ItemResponse:Item, Decodable {
    var status: String
    var species: String
    var id: Int
    var name: String
  
    
}

protocol Item: Decodable {
    
    var id: Int { get set }
    var name: String { get set }
    var status: String { get set }
    var species: String { get set }
}
