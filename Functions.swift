// functions
func showWelcome(){
    print("Welcome sir/mam")
    print("How may i help you")
}


showWelcome()
showWelcome()

let rollno = Int.random(in: 1...20)
print(rollno)

func printTimesTables(number: Int) { // parameter
    for i in 1...10 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number:10) // argument

// How to return values from functions
// func rollDice()-> Int {
//     return Int.random(in: 1...6);
// }

// print(rollDice())

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}
// func areLettersIdentical(string1: String, string2: String) -> Bool {
//     string1.sorted() == string2.sorted()
// }   // we can also write this if function has only 1 line of code

print(areLettersIdentical(string1: "aastik",string2: "aastik"))


// func getUser() -> [String] {
//     ["Taylor", "Swift"]
// }

// let user = getUser()
// print("Name: \(user[0]) \(user[1])") 

// func getUser ()-> [String: String]{
//     [
//         "Taylor": "Swift",
//         "Temp": "extra"
//     ]
// }

// let user = getUser()
// print("Name : \(user["Taylor" , default: "Anonymous"])")


func getUser()-> (firstName: String, secondName: String){
    return (firstName: "Taylor", secondName: "Swift")
}

let user = getUser()
print("Name \(user.firstName) or \(user.secondName)")


func getUsertwo()-> (String,String){
    
    ("Taylor","Swift")
}


let userTwo = getUsertwo()
print("\(userTwo.0) and \(userTwo.1)")

let (firstName,secondName) = getUsertwo()
print("\(firstName) \(secondName)")

let (oneName,_) = getUsertwo()
print("\(oneName)")


// customise parameters

func rollDice(sides: Int , count: Int)-> [Int]{
    
    var rolls = [Int]()
    
    for i in 1...count{
        
        let roll = Int.random(in: 1...sides)
        
        rolls.append(roll);
    }
    
    return rolls;
}

let rolls = rollDice(sides:6 , count:4)
print(rolls)

let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))
