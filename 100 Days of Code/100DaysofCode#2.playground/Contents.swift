import UIKit

//Arrays
    let john = "John Lennon"
    let paul = "Paul McCartney"
    let george = "George Harrison"
    let ringo = "Ringo Starr"

    let beatles = [john,paul,george,ringo]
    beatles[1]

//Sets
    let colours = Set(["red","green","blue"])
    let colours2 = Set(["red","green","blue","blue"]) //duplicates in sets are ignored

//Tuples
    var name = (first: "Taylor", last: "Swift")
    name.0
    name.first

//Arrays vs sets vs tuples

    //If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
    let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
    address.house

    //If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
    let set = Set(["aardvark", "astronaut", "azalea"])

    //If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
    let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//Dictionaries
    let heights = [
        "Taylor Swift": 1.78,
        "Ed Sheeran": 1.73
    ]
    heights["Taylor Swift"]

//Dictionary default values
    let favoriteIceCream = [
        "Paul": "Chocolate",
        "Sophie": "Vanilla"
    ]

    favoriteIceCream["Paul"]
    //We can fix this by giving the dictionary a default value of “Unknown”, so that when no ice cream is found for Charlotte we get back “Unknown” rather than nil:
    favoriteIceCream["Charlotte", default: "Unknown"]

//Creating empty collections
    var teams = [String: String]()
    teams ["James"] = "Blue"

    //Similarly, you can create an empty array to store integers like this:
    var results = [Int]()

    //The exception is creating an empty set, which is done differently:
    var words = Set<String>()
    var numbers = Set<Int>()
    //This is because Swift has special syntax only for dictionaries and arrays; other types must use angle bracket syntax like sets.

    //If you wanted, you could create arrays and dictionaries with similar syntax:
    var scores = Dictionary<String, Int>()
    var results2 = Array<Int>()

//Enumerations
    let result = "Failure"
    let result2 = "failed"
    let result3 = "fail"

    //This stops you from accidentally using different strings each time.

    enum Result {
        case success
        case failure
    }

    let result4 = Result.failure

//Enum associated values
    enum Activity {
        case bored
        case running
        case talking
        case singing
    }

    enum Activity2 {
        case bored
        case running(destination: String)
        case talking(topic: String)
        case singing(volume: Int)
    }

    let talking = Activity2.talking(topic: "football")

//Enum raw values
    //Sometimes you need to be able to assign values to enums so they have meaning. This lets you create them dynamically, and also use them in different ways.
    //For example, you might create a Planet enum that stores integer values for each of its cases:
    
    enum Planet: Int {
            case mercury
            case venus
            case earth
            case mars
        }

    let earth = Planet(rawValue: 2)

    //Swift will automatically assign each of those a number starting from 0, and you can use that number to create an instance of the appropriate enum case. For example, earth will be given the number 2, so you can write this:

    enum Planet2: Int {
        case mercury = 1
        case venus
        case earth
        case mars
    }
