var greeting = "Hello World"
var name = "Aastik"
name = "Swift"
name = "John"   // we don’t use var again because we are modifying an existing variable

let chracter = "Daphne" // we us let to make it as constant

// If you were curious, yes i am curious 😂 “let” comes from the mathematics world, where they say things like “let x be equal to 5.

print(greeting)
print(name)

// Note -: prefer to use constants rather than variables

// --------------------------------------------------------
let actor = "Hrithik Roshan"
let result = "⭐️ You win! ⭐️"
let quote = "Hi my name is \"Aastik\""
print(quote)

let movie = """
A day in
the life of an
Apple engineer
"""
print(movie)
print(movie.count)
print(actor.uppercased())
print(actor.lowercased())
print(movie.hasPrefix("A day")) // lets us know whether a string starts with some letters of our choosing:
print(movie.hasSuffix("Apple"))

// --------------------------------------------------

let score = 10

let largeScore = 100_000_000_0
print(largeScore)

let lowerScore = score - 2
let higherScore = score + 10

var counter = 10
counter += 5

print(counter)

let number = 120;
print(number.isMultiple(of: 3))
