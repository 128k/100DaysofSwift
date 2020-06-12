import UIKit

// 100 Days of Swift - Day 10

//MARK: Creating your own classes

    class Dog {
        var name: String
        var breed: String

        init(name: String, breed: String) {
            self.name = name
            self.breed = breed
        }
    }

    let poppy = Dog(name: "Poppy", breed: "Poodle")

//MARK: Class inheritance

//    class Poodle: Dog {
//        init(name: String) {
//            super.init(name: name, breed: "Poodle")
//        }
//    }

