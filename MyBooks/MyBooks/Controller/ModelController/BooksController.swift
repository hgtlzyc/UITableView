//
//  BooksController.swift
//  MyBooks
//
//  Created by lijia xu on 7/16/21.
//

import Foundation

final class BooksController {
    static var books: [Book] {
        let book1 = Book(title: "SwiftUI Apprentice", author: "Audrey Tam", coverImageName: "swiftUIApp", releaseDate: Date.genterateDateFrom(year: 2021, month: 5, day: 6), description: "If you're new to iOS programming, this is the book for you! Learn to build beautiful, fully-functional apps using Apple’s hottest user interface technology: SwiftUI!")
        
        let book2 = Book(title: "SwiftUI by Tutorials", author: "Bill Morefield", coverImageName: "swiftUITut", releaseDate: Date.genterateDateFrom(year: 2020, month: 1, day: 10), description: "Build fluid and engaging declarative UI for your apps with way less coding with SwiftUI! SwiftUI by Tutorials, the complete guide to building fluid and engaging declarative UI for your apps — using less code — with SwiftUI, is now fully updated!")
        
        let book3 = Book(title: "Combine", author: "Florent Pillet", coverImageName: "combineCover", releaseDate: Date.genterateDateFrom(year: 2021, month: 3, day: 5), description:"The best book to master declarative asynchronous programming with Swift using the Combine framework!")
        
        let book4 = Book(title: "Expert Swift", author: "Marin Bencevic", coverImageName: "expertSwiftCover", releaseDate: Date.genterateDateFrom(year: 2020, month: 6, day: 8), description:"Take your Swift skills to the next level with the Expert Swift book.")
        
        let book5 = Book(title: "Augmented Reality", author: "Chris Language", coverImageName: "arKitCover", releaseDate: Date.genterateDateFrom(year: 2021, month: 1, day: 11), description:"The best book to learn how to build realistic and immersive AR experiences for the Apple platform.")
        
        let book6 = Book(title: "Advanced Git", author: "Jawwad Ahmad", coverImageName: "advancedGitCover", releaseDate: Date.genterateDateFrom(year: 2019, month: 2, day: 6), description:"Advance your understanding of how Git works under the hood, master workflows, branching, merging and rebasing your work for easy and successful project collaboration!")
        
        return [book1, book2, book3, book4, book5, book6]
    }
}
