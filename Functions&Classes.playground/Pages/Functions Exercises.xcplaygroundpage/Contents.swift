import UIKit
//: ## Functions and Closures
//:
//: Use `func` to declare a function. Call a function by following its name with a list of arguments in parentheses. Use `->` to separate the parameter names and types from the function’s return type.
//:
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet("Bob", day: "Tuesday")

///: Use a tuple to make a compound value—for example, to return multiple values from a function. The elements of a tuple can be referred to either by name or by number.
//:
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics([5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

//: Functions can also take a variable number of arguments, collecting them into an array.
//:
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(42, 597, 12)

//: Functions can be nested. Nested functions have access to variables that were declared in the outer function. You can use nested functions to organize the code in a function that is long or complex.
//:
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()

//: Functions are a first-class type. This means that a function can return another function as its value.
//:
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
increment(7)

//: A function can take another function as one of its arguments.
//:
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, condition: lessThanTen)

//: # Functions Exercises
/*:
### 1
Write a function named min2 that takes two Int values, a and b, and returns the smallest one.
*/
/*:
### 2
Write a function that takes an Int and returns it’s last digit. Name the function lastDigit.
*/
/*:
### 3
Write a function named first that takes an Int named N and returns an array with the first N numbers starting from 1.
*/
/*:
### 4 Countdown
Write a function named countdown that takes a number N. The function should print the numbers from N to 1 and then write GO! in the end. */

/*:
### 5Primes
Implement the following functions. The divides function returns true if a is divisible by b and false otherwise. The countDivisors function should use the divides function to return the number of divisors of number. The isPrime function should use the countDivisors function to determine if number is prime.*/

/*:
#### Examples:
divides(3, 2) // false - 3 is not divisible by 2
divides(6, 3) // true - 6 is divisible by 3

countDivisors(2) // 2 - 1 and 2
countDivisors(6) // 4 - 1, 2, 3 and 6
countDivisors(12) // 6 - 1, 2, 3, 4, 6 and 12

isPrime(2) // true
isPrime(3) // true
isPrime(10) // false
isPrime(13) // true

*/
//: | [Next](@next)



