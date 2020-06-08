import UIKit

//100Daysofwift Day 6

//Creating basic closures
    let driving = {
        print("I'm driving in my car")
    }

    driving()

//Accepting parameters in a closure
    let drive = { (place: String) in
        print("I'm going to \(place) in my car")
    }
    drive("London")

    let name = { (name: String) in
        print("Hello \(name)")
    }
    name("James")

//Returning values from a closure
    let drivingWithReturn = { (place: String) -> String in
        return "I'm going to \(place) in my car"
    }

    let message = drivingWithReturn("London")
    print(message)

//Closures as parameters
    func travel(action: () -> Void) {
        print("I'm getting ready to go.")
        action() //So, we can write a travel() function that accepts different kinds of traveling actions, and prints a message before and after:
        print("I arrived!")
    }

    travel(action: driving)

//Trailing closure syntax
    //Because there aren’t any other parameters, we can eliminate the parentheses entirely:
    travel {
        print("I'm driving in my car")
    }

//Using closures as parameters when they accept parameters
    func travel2(action: (String) -> Void) {
        print("I'm getting ready to go.")
        action("London")
        print("I arrived!")
    }

    travel2 { (place: String) in
        print("I'm going to \(place) in my car")
    }

//Using closures as parameters when they return values
    func travel3(action: (String) -> String) {
        print("I'm getting ready to go.")
        let description = action("London")
        print(description)
        print("I arrived!")
    }

    travel3 { (place: String) -> String in
        return "I'm going to \(place) in my car"
    }

//Shorthand parameter names
    func travel4(action: (String) -> String) {
        print("I'm getting ready to go.")
        let description = action("London")
        print(description)
        print("I arrived!")
    }

    travel4 { (place: String) -> String in
        return "I'm going to \(place) in my car"
    }

    travel4 { place -> String in
        return "I'm going to \(place) in my car"
    }

    travel4 { place in
        return "I'm going to \(place) in my car"
    }
    
    travel4 { place in
        "I'm going to \(place) in my car"
    }

    travel4 {
        "I'm going to \($0) in my car" //Swift has a shorthand syntax that lets you go even shorter. Rather than writing place in we can let Swift provide automatic names for the closure’s parameters. These are named with a dollar sign, then a number counting from 0.
    }

    //Closures with multiple parameters
    func travel5(action: (String, Int) -> String) {
        print("I'm getting ready to go.")
        let description = action("London", 60)
        print(description)
        print("I arrived!")
    }

    travel5 {
        "I'm going to \($0) at \($1) miles per hour."
    }

//Returning closures from functions
    func travel6() -> (String) -> Void {
        return {
            print("I'm going to \($0)")
        }
    }

    let resultA = travel6()
    resultA("London")

    let result = travel()("London")

//Capturing values
    func travel7() -> (String) -> Void {
        return {
            print("I'm going to \($0)")
        }
    }

    let result = travel7()
    result("London")

    func travel() -> (String) -> Void {
        var counter = 1

        return {
            print("\(counter). I'm going to \($0)")
            counter += 1
        }
    }

    
