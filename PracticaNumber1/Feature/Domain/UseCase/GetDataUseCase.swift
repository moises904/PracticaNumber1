//
//  GetDataUseCase.swift
//  PracticaNumber1
//
//  Created by Moises Almeyda on 21/04/21.
//

import Foundation

protocol IGetDataUseCase {
    func executeGetData(completion:@escaping(_ response: Result<[BookModel]?, Error>?)->Void)
}

class GetDataUseCase: IGetDataUseCase {
  
    private let getDataRespository: GetDataRespository
    
    init() {
        self.getDataRespository = GetDataRespository()
    }
    
    func executeGetData(completion:@escaping(_ response: Result<[BookModel]?, Error>?)->Void) {
   
        self.getDataRespository.getDataCharacters(completion: {
            result in
            completion(result)

        })
    }
    
}
