import UIKit

//100 Days of Swift - Day 9

//MARK: Initializers

    struct User {
        var username: String

        init() {
            username = "Anonymous"
            print("Creating a new user!")
        }
    }

    var user = User()
    user.username = "James"

//MARK: Referring to the current instance
    struct Person {
        var name: String

        init(name: String) {
            print("\(name) was born!")
            self.name = name
        }
    }

//Repeat in previous sessions
