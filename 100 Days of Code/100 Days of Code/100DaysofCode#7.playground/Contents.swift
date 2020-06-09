import UIKit

//100 Days of Code - Day 7

//MARK: Using closures as parameters when they accept parameters
    func travel(action: (String) -> Void) {
        print("I'm getting ready to go.")
        action("London")
        print("I arrived!")
    }

    travel { (place: String) in
        print("I'm going to \(place) in my car")
    }

//MARK: Using closures as parameters when they return values
    func travel2(action: (String) -> String) {
        print("I'm getting ready to go.")
        let description = action("London")
        print(description)
        print("I arrived!")
    }
    
    //Now when we call travel() using trailing closure syntax, our closure code is required to accept a string and return a string:
    travel2 { (place: String) -> String in
        return "I'm going to \(place) in my car"
    }

//MARK: Shorthand parameter names
    func travel3(action: (String) -> String) {
        print("I'm getting ready to go.")
        let description = action("London")
        print(description)
        print("I arrived!")
    }
    
    travel3 { (place: String) -> String in
        return "I'm going to \(place) in my car"
    }

    travel3 {
        "I'm going to \($0) in my car"
    }
    
//MARK: Closures with multiple parameters
    
    func travel4(action: (String, Int) -> String) {
        print("I'm getting ready to go.")
        let description = action("London", 60) //$0, $1 on action
        print(description)
        print("I arrived!")
    }

    travel4 {
        "I'm going to \($0) at \($1) miles per hour."
    }

//MARK: Returning closures from functions

    func travel5() -> (String) -> Void { // uses -> twice: once to specify your function’s return value, and a second time to specify your closure’s return value
        return {
            print("I'm going to \($0)")
        }
    }

    let result = travel5()
    result("London")
    
    let result2 = travel5()("London")
    
//MARK: Capturing values
        
    func travel6() -> (String) -> Void {
        return {
            print("I'm going to \($0)")
        }
    }

    func travel7() -> (String) -> Void {
        var counter = 1

        return {
            print("\(counter). I'm going to \($0)")
            counter += 1
        }
    }

    result("London")
    result("London")
    result("London")
