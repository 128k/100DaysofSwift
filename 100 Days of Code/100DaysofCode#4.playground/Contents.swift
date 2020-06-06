import UIKit

//100DaysofCode Day 4

//For Loops
    let count = 1...10

    for number in count {
        print("Number is \(number)")
    }

    let albums = ["Red", "1989", "Reputation"]

    for album in albums {
        print("\(album) is on Apple Music")
    }

    print("Players gonna ")

    for _ in 1...5 {
        print("play")
    }

//While Loops
    var num = 1

    while num <= 20 {
        print(num)
        num += 1
    }

    print("Ready or not, here I come!")

//Repeat Loops
    var number = 1

    repeat {
        print(number)
        number += 1
    } while number <= 20

    print("Ready or not, here I come!")

    while false {
        print("This is false") // Won't run as false is always false
    }

    repeat {
        print("This is false")
    } while false


//Exiting loops
    var countDown = 10

    while countDown >= 0 {
        print(countDown)
        
//        if countDown == 4 {
//            print("I'm bored. Let's go now!")
//            break
//        }
        
        countDown -= 1
    }

    

    print("Blast off!")

//Exiting multiple loops
    //Nested Loops exits

    for i in 1...10 {
        for j in 1...10 {
            let product = i * j
            print ("\(i) * \(j) is \(product)")
        }
    }

    outerLoop: for i in 1...10 {
        for j in 1...10 {
            let product = i * j
            print ("\(i) * \(j) is \(product)")
        }
    }

    outerLoop: for i in 1...10 {
        for j in 1...10 {
            let product = i * j
            print ("\(i) * \(j) is \(product)")

            if product == 50 {
                print("It's a bullseye!")
                break outerLoop //Outerloop: is the label - This is the exit implementation
            }
        }
    }

//Skiping Items
    for i in 1...10 {
        if i % 2 == 1 { //the remainder operator figures out how many times 2 fits into each number in our loop
            continue //Continue skips to next item e.g. print(i)
        }

        print(i)
    }

//Infinite Loops
    var counter = 0

    while true {
        print("Argh!")
        counter += 1

        if counter == 273 {
            break
        }
    }
