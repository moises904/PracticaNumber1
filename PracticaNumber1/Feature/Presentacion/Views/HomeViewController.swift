//
//  ViewController.swift
//  PracticaNumber1
//
//  Created by Moises Almeyda on 20/04/21.
//

import UIKit
import Alamofire

class HomeViewController: UIViewController {

    private var getDataViewModel: GetDataViewModel = GetDataViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getDataTest()
    }

    func getDataTest() -> Void{
        
        self.getDataViewModel.getDataBooks()
        
        
    }
}

