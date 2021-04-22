//
//  IGetDataRespository.swift
//  PracticaNumber1
//
//  Created by Moises Almeyda on 21/04/21.
//

import Foundation

protocol IGetDataRepository {
    func getDataCharacters(completion:@escaping(_ response: Result<[BookModel]?, Error>?)->Void)
}
