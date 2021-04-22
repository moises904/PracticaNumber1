//
//  GetDataViewModel.swift
//  PracticaNumber1
//
//  Created by Moises Almeyda on 21/04/21.
//

import Foundation

class GetDataViewModel {
    
    private let getDataUseCase: GetDataUseCase?
    
    init() {
        self.getDataUseCase = GetDataUseCase()
    }
 
    public func getDataBooks() {
        
        let dataCompletion: ((Result<[BookModel]?, Error>)?)->Void = {
            result in
            switch result {
            
            case .success(let dataBooks):
                print("data view model")
                print(dataBooks)
            break
            
            case .failure(let error):
                print("error view model")
                print(error)
            break
                
            case .none:
                print("No sale nada")
            }
        }
        
        self.getDataUseCase?.executeGetData(completion: dataCompletion)
        
    }
}
