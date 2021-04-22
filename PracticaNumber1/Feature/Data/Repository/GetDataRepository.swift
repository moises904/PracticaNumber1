//
//  GetDataRepository.swift
//  PracticaNumber1
//
//  Created by Moises Almeyda on 21/04/21.
//

import Foundation
import Alamofire

class GetDataRespository: IGetDataRepository {
    
    var dataApi : DataApi
    
    init(dataApi:DataApi = DataApi()) {
        self.dataApi = dataApi
    }
    
    func getDataCharacters(completion:@escaping(_ response: Result<[BookModel]?, Error>?)->Void) {
       
     dataApi.generateRequest(valueMethod: HTTPMethod.get )?.responseDecodable {
        
        (result: AFDataResponse<BooksReponse>) in

        switch (result.result) {
        
        case .success(let data):
            print(data.information)
            completion(.success(transformBooksResponseToBooksModel(booksResponse: data.resultsResponse)))
            break
            
        case .failure(let error):
            print("ERROR")
            break
            
        }
    }
        
    }
    
    
}
