//
//  ApiBuilder.swift
//  PracticaNumber1
//
//  Created by Moises Almeyda on 20/04/21.
//
import Alamofire

public class ApiBuilder {
    
    func generateRequest(request: String? = nil, valueMethod: HTTPMethod)->DataRequest? {

        
        let headers: HTTPHeaders? = [/*Configuration.AUTORIZATHION: Configuration.PASSWORD,*/
                                     Configuration.ACCEPT: Configuration.CONTECT_JSON]
        
        let request =  AF.request(Configuration.basePathSimulator , method: valueMethod, parameters: request,
                                   headers:headers).validate()
        debugPrint(request)
        return request
    }
    
}

