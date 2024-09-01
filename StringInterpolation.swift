let filename = "paris.jpg"
print(filename.hasSuffix("paris"))
print(filename.hasPrefix("paris"))

let number = 120;
print(number.isMultiple(of: 3))

let goodDogs = true
let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

var gameOver = false
print(gameOver)

gameOver.toggle()
print(gameOver)  // yes it is same as that ! but less code here we write 

// How to join strings together
let firstPart = "Hello "
let secondPart = " World !"

let greetings  = firstPart +  secondPart
print(greetings)

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

print("Hello", terminator: " ") // if we did not want to put it in next line 
print("Hi")

// Why do we need String interpolation in the swift
let luggageCode = "1" + "2" + "3" + "4" + "5"
//  it makes temporary strings to hold “12”, “123”, and “1234” even though they aren’t ultimately used when the code finishes.

print(luggageCode)


let name = "Taylor"
let age = 26
let message = "Hi My Name is \(name) and i am \(age) years old"
print(message)

let missionMessage = "Apollo " + String(age) +  "landed on the moon"
print(missionMessage)

// Note :- Tip: You can put calculations inside string interpolation if you want to. For example, this will print “5 x 5 is 25”:

print("5 x 5 is \(5 * 5)")


