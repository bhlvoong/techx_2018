import UIKit

// Medium Difficulty
func factorial(num: Int) -> Int {
    
}

// A little harder
func countOccurrenceOfNames(names: [String]) {
    
}

// Example: factorial(5) is 5 * 4 * 3 * 2 * 1 = 120

func fizzbuzz(numbers: [Int]) {
    // forEach closure
    numbers.forEach { (num) in
        if num % 15 == 0 {
            print("fizzbuzz:", num)
        } else if num % 5 == 0 {
            print("fizz:", num)
        } else if num % 3 == 0 {
            print("buzz:", num)
        } else {
            print(num)
        }
    }
    
    // CMD + /
//    for num in numbers {
//        print(num)
//    }
    
    // print "fizz" for numbers that are divisible by 5
    // print "buzz" for numbers divisible by 3
    // print "fizzbuzz" for numbers divisble by 15
    // Otherwise just print out the number
}

fizzbuzz(numbers: [1, 2, 3, 4, 5, 6, 7, 15])
// Solution should print
// 1
// 2
// fizz
// 3
// 4
// buzz
// fizz
// 7
// fizzbuzz
