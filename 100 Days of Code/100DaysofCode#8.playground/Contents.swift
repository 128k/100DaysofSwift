import UIKit

//100 Days of Code, Day 8 : Structs, part one

//MARK: Creating your own structs

    struct Sport {
        var name: String
    }

    var tennis = Sport(name: "Tennis")
    print(tennis.name)

    tennis.name = "Lawn tennis"

//MARK: Computed properties
    
    struct Sport2 {
        var name: String
        var isOlympicSport: Bool

        var olympicStatus: String {
            if isOlympicSport {
                return "\(name) is an Olympic sport"
            } else {
                return "\(name) is not an Olympic sport"
            }
        }
    }

    let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
    print(chessBoxing.olympicStatus)

//MARK: Property observers
    
//    struct Progress {
//        var task: String
//        var amount: Int
//    }

    var progress = Progress(task: "Loading data", amount: 0)
    progress.amount = 30
    progress.amount = 80
    progress.amount = 100

    struct Progress {
        var task: String
        var amount: Int {
            didSet {
                print("\(task) is now \(amount)% complete")
            }
        }
    }

//MARK: Methods

    //Structs can gave fucntions inside called METHODS
    struct City {
        var population: Int

        func collectTaxes() -> Int {
            return population * 1000
        }
    }

    let london = City(population: 9_000_000)
    london.collectTaxes()
    
//MARK: Mutating methods

//    struct Person {
//        var name: String
//
//        mutating func makeAnonymous() {
//            name = "Anonymous"
//        }
//    }
//
//    var person = Person(name: "Ed")
//    person.makeAnonymous()

//MARK: Properties and methods of strings
    
    let string = "Do or do not, there is no try."

    print(string.count)
    print(string.hasPrefix("Do"))
    print(string.uppercased())
    print(string.sorted())
    
//MARK: Properties and methods of arrays
    
    var toys = ["Woody"]
    print(toys.count)
    toys.append("Buzz")
    toys.firstIndex(of: "Buzz")
    print(toys.sorted())
    toys.remove(at: 0)

//MARK: Initializers
    
//    struct User {
//        var username: String
//    }

//    var user = User(username: "james")
    
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
//    struct Person {
//        var name: String
//
//        init(name: String) {
//            print("\(name) was born!")
//            self.name = name
//        }
//    }

//MARK: Lazy properties

    struct FamilyTree {
        init() {
            print("Creating family tree!")
        }
    }

    struct Person {
        var name: String
        var familyTree = FamilyTree()

        init(name: String) {
            self.name = name
        }
    }

    var ed = Person(name: "Ed")

    var familyTree = FamilyTree()

    ed.familyTree


//MARK: Static properties and methods
    
//    struct Student {
//        var name: String
//
//        init(name: String) {
//            self.name = name
//        }
//    }

    let james = Student(name: "James")
    let taylor = Student(name: "Taylor")

    struct Student {
        static var classSize = 0
        var name: String

        init(name: String) {
            self.name = name
            Student.classSize += 1
        }
    }

    print(Student.classSize)

//MARK: Access control
//    struct Person {
//        private var id: String
//
//        init(id: String) {
//            self.id = id
//        }
//
//        func identify() -> String {
//            return "My social security number is \(id)"
//        }
//    }

//Some code has been commented out as it is repeated with additional atrtributes - will not run if all is active
