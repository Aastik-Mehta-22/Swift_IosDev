//Optionals

let opposites = [
    "Mario": "Wario",
    "Luigi": "Walugi"
]

if let marioOpposite = opposites["Mario"]{
    print("Marios opposite is \(marioOpposite)")
}

// basically if let is used to unwrap the optionals whether the 
    // optionals have some value or nil in it

var username: String? = "aastik"

if let unwrappedName = username{
    print("We got a user: \(unwrappedName)")
}
else{
    print("We got an empty value")
}


func square(number: Int)-> Int{
    number*number
}

var number: Int? = 5
if let unwrappednumber = number{
    print(square(number: unwrappednumber))
}


// You’ve already seen how Swift uses if let to unwrap optionals, and it’s the most common way of using optionals. But there is a second way that does much the same thing, and it’s almost as common: guard let.
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}

var num: Int? = 45;
printSquare(of: num)

// How to unwrap optionals with nil coalescing
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

// let new = captains["Serenity"] basically it gives error we need to provide a default value for the same 
// With the nil coalescing operator, written ??, we can provide a default value for any optional, like this:
let new = captains["Serenity"] ?? "N/A"

// Multiple Optionals using multiple chaining

struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)
