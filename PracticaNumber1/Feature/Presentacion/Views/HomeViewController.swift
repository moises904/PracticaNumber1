//
//  ViewController.swift
//  PracticaNumber1
//
//  Created by Moises Almeyda on 20/04/21.
//

import UIKit
import Alamofire

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getDataTest()
    }

    func getDataTest() -> Void{
        
        
        ApiBuilder().generateRequest(valueMethod: HTTPMethod.get)?.responseString {
            response in
            print(response)
        }

        
        
    }
}

