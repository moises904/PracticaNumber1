//
//  Tramsform.swift
//  PracticaNumber1
//
//  Created by Moises Almeyda on 21/04/21.
//

import Foundation


 func transformBooksResponseToBooksModel(booksResponse: [ItemResponse]) -> [BookModel] {
    var lstBooksModel = Array<BookModel>()
    for bookResponse in booksResponse[0...(booksResponse.count-1)] {
        let bookModel = BookModel(id: bookResponse.id,name: bookResponse.name,
                                  status: bookResponse.status,
                                  species: bookResponse.species)
        lstBooksModel.append(bookModel)
    }
    return lstBooksModel
    
}
