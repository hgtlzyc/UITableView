//
//  BookListsTableViewController.swift
//  MyBooks
//
//  Created by lijia xu on 7/16/21.
//

import UIKit

class BookListsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = #colorLiteral(red: 0.008782254532, green: 0.2677100599, blue: 0.4868485928, alpha: 1)
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        BooksController.books.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath)
        let bookForCell = BooksController.books[indexPath.row]
        
        cell.textLabel?.text = bookForCell.title
        cell.detailTextLabel?.text = bookForCell.author

        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toBookDetailsView" {
            guard let bookDetailsVC = segue.destination as? BookDetailsViewController,
                  let bookIndexPathSelected = tableView.indexPathForSelectedRow else { return }
            
            bookDetailsVC.book = BooksController.books[bookIndexPathSelected.row]
            
        }
    }
    
}
