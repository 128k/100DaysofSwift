import UIKit

//100 Days of Code with Swift - Day 3 Operators and conditions

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

//MARK:Operator overloading
    let meaningOfLife = 42
    let doubleMeaning = 42 + 42

    let fakers = "Fakers gonna "
    let action = fakers + "fake"

    let firstHalf = ["John", "Paul"]
    let secondHalf = ["George", "Ringo"]
    let beatles = firstHalf + secondHalf

//MARK:Compound assignment operators
    var score = 95
    score -= 5

    var quote = "The rain in Spain falls mainly on the "
    quote += "Spaniards"

//MARK:Comparison operators
    let firstScoreA = 6
    let secondScoreA = 4
    firstScoreA == secondScoreA
    firstScoreA != secondScoreA
    firstScoreA < secondScoreA
    firstScoreA >= secondScoreA

//MARK:Conditions
    let firstCard = 11
    let secondCard = 10

    if firstCard + secondCard == 21 {
        print("Blackjack!")
    }

    if firstCard + secondCard == 21 {
        print("Blackjack!")
    } else {
        print("Regular cards")
    }

    if firstCard + secondCard == 2 {
        print("Aces – lucky!")
    } else if firstCard + secondCard == 21 {
        print("Blackjack!")
    } else {
        print("Regular cards")
    }

//MARK:Combining conditions
    let age1 = 12
    let age2 = 21

    if age1 > 18 && age2 > 18 {
        print("Both are over 18")
    }

    if age1 > 18 || age2 > 18 {
        print("At least one is over 18")
    }

//MARK: The ternary operator
    let first = 11
    let second = 10
    print(first == second ? "Cards are the same" : "Cards are different")
    
    if first == second {
        print("Cards are the same")
    } else {
        print("Cards are different")
    }

//MARK: Switch statements
    let weather = "sunny"

    switch weather {
    case "rain":
        print("Bring an umbrella")
    case "snow":
        print("Wrap up warm")
    case "sunny":
        print("Wear sunscreen")
    default:
        print("Enjoy your day!")
    }

    switch weather {
    case "rain":
        print("Bring an umbrella")
    case "snow":
        print("Wrap up warm")
    case "sunny":
        print("Wear sunscreen")
        fallthrough //Fallthrough Keyword: Continues to the next case (prints case 'Sunny' and the default 'Enjoy your day'
    default:
        print("Enjoy your day!")
    }

//MARK: Range operators
    let scoreRO = 85

    switch scoreRO {
    case 0..<50:
        print("You failed badly.")
    case 50..<85:
        print("You did OK.")
    default:
        print("You did great!")
    }
