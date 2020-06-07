import UIKit

//100DaysofSwift Day 5

//Writing functions

    func printHelp() {
        let message = """
    Welcome to MyApp!

    Run this app inside a directory of images and
    MyApp will resize them all into thumbnails
    """

        print(message)
    }

    printHelp()

//Accepting parameters
    print("Hello, world!")

    func square(number: Int) {
        print(number * number)
    }

    square(number: 8)

//Returning Values
    func square2(number: Int) -> Int {
        return number * number
    }

    let result = square2(number: 8)
    print(result)

//Parameter labels
    func square3(number: Int) -> Int {
        return number * number
    }

    let result2 = square3(number: 8)

    func sayHello(to name: String) {
        print("Hello, \(name)!")
    }

    sayHello(to: "Taylor")

//Omitting parameter labels
    func greet(_ person: String) {
        print("Hello, \(person)!")
    }

    greet("Taylor")

//Default parameters
    func greet2(_ person: String, nicely: Bool = true) {
        if nicely == true {
            print("Hello, \(person)!")
        } else {
            print("Oh no, it's \(person) again...")
        }
    }

    greet2("Taylor")
    greet2("Taylor", nicely: false)

//Variadic functions
    print("Haters", "gonna", "hate")
    
    func square3(numbers: Int...) { //Int is single Int, Int... is zero or more integers
        for number in numbers {
            print("\(number) squared is \(number * number)")
        }
    }

    square3(numbers: 1, 2, 3, 4, 5)

//------

//Writing throwing functions
    enum PasswordError: Error {
        case obvious
    }

    func checkPassword(_ password: String) throws -> Bool {
        if password == "password" {
            throw PasswordError.obvious
        }

        return true
    }

//Running throwing functions
    do {
        try checkPassword("password")
        print("That password is good!")
    } catch {
        print("You can't use that password.")
    }

//-----
//inout parameters
    func doubleInPlace(number: inout Int) {
        number *= 2
    }

    var myNum = 10
doubleInPlace(number: &myNum) //&, before its name, which is an explicit recognition that you’re aware it is being used as inout
