//
//  ViewController.swift
//  PracticaNumber1
//
//  Created by Moises Almeyda on 20/04/21.
//

import UIKit
import Alamofire

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableListBooks: UITableView!
    
    private var getDataViewModel: GetDataViewModel = GetDataViewModel()
    private var listBooks:[BookModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerObservers()
        getDataBooks()
    }

    func getDataBooks() -> Void{
        tableListBooks.delegate = self
        tableListBooks.dataSource = self
        self.getDataViewModel.getDataBooks()
        
    }
    
    private func registerObservers() {
        
        self.getDataViewModel.lstBooks.observe {
            lstBooks in
            self.listBooks = lstBooks
            self.tableListBooks.reloadData()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listBooks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bookCell = tableListBooks.dequeueReusableCell(withIdentifier: "BookCelllID", for: indexPath) as! BookCell
        bookCell.descriptionCell.text = self.listBooks[indexPath.row].name
        return bookCell
    }
    
}

