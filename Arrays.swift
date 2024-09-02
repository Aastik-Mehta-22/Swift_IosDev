//  Lets start with the arrays 
var beatles = ["John","Paul", "George", "Ringo"]
let numbers = [4,8,15,16,23,42]
var temperatures = [25.3,28.2,26.4]


print(beatles[0])
print(numbers[1])
print(temperatures[2])

beatles.append("Allen")
beatles.append("Adrian")

let firstBeatle = beatles[0]
let firstNumber = numbers[0]
// let notAllowed = firstBeatle + firstNumber  (it is type safety will give error can not apply + to string and int)

var scores: Array<Int> = []

scores.append(100)
scores.append(50)

print(scores[0])

var albums = [String]()
albums.append("fearless")
albums.append("opensource")

// var albums = ["Folklore"]
// albums.append("Fearless")
// albums.append("Red")   this is also same as the above code but  it is the other syntax

print(albums.count)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters)

characters.removeAll()
print(characters.count)

characters = ["Lana", "Pam", "Ray", "Sterling", "Aastik"]
print(characters.contains("Pam")) // prints true as it contains

print(characters.sorted())
print(characters)

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = Array(presidents.reversed())
print(reversedPresidents)








