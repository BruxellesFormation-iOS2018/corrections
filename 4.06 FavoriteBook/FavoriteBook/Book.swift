
import Foundation

class Book: NSObject {
    
    struct PropertyKeys {
        static let title = "title"
        static let author = "author"
        static let genre = "genre"
        static let length = "length"
    }
    
    let title: String
    let author: String
    let genre: String
    let length: String
    
    override var description: String {
        return "\(title) is written by \(author) in the \(genre) genre and is \(length) pages long"
    }
    
    init(title: String, author: String, genre: String, length: String) {
        self.title = title
        self.author = author
        self.genre = genre
        self.length = length
    }
    
}
