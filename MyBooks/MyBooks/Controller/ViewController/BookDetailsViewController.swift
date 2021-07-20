//
//  BookDetailsViewController.swift
//  MyBooks
//
//  Created by lijia xu on 7/16/21.
//

import UIKit

class BookDetailsViewController: UIViewController {
    
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var authorNameLabel: UILabel!
    @IBOutlet weak var coverImageOutlet: UIImageView!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var book: Book?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBookDetailsView()
    }
    
    func updateBookDetailsView() {
        guard let book = book else { return }
        bookTitleLabel.text = book.title
        authorNameLabel.text = book.author
        coverImageOutlet.image = UIImage(named: book.coverImageName)
        releaseDateLabel.text = "Released: " + book.releaseDate.getStringDescription()
        descriptionTextView.text = book.description
    }
    
}
