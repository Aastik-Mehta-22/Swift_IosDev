// structures

struct Album{
    let title: String
    let artist: String
    let year: Int
    
    func printSummary(){ 
        print("\(title) (\(year)) by \(artist)")
    }
}

// Notice how we can create a new Album as if we were calling a function – we just need to provide values for each of the constants in the order they were defined.


let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 20126)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()


// struct Employee {
//     let name: String
//     var vacationRemaining: Int

//     mutating func takeVacation(days: Int) {
//         if vacationRemaining > days {
//             vacationRemaining -= days
//             print("I'm going on vacation!")
//             print("Days remaining: \(vacationRemaining)")
//         } else {
//             print("Oops! There aren't enough days remaining.")
//         }
//     }
// }
// here mutating is used to mutate the keyword in the struct class

// var archer = Employee(name: "Archer Op",vacationRemaining: 14)
// print(archer.vacationRemaining)
// archer.vacationRemaining -= 3;
// print(archer.vacationRemaining)
// archer.vacationRemaining  -= 2;
// print(archer.vacationRemaining);


//Below is the example of the computed value we did not have to update vacationRemaining it will update it automatically

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int { 
        get{
            vacationAllocated - vacationTaken
        }
        
        set{
            vacationAllocated = vacationTaken + newValue
        }
        
        // notice newValue – that’s automatically provided to us by Swift, and stores whatever value the user was trying to assign to the property.

    }
}

var archer = Employee(name: "Archer Op", vacationAllocated: 14)
print(archer.vacationRemaining)
archer.vacationTaken += 3;
print(archer.vacationRemaining)
archer.vacationTaken += 2;
print(archer.vacationRemaining)

// lets take a look at didset and willset 
// struct Game {
//     var score = 0
// }

// var game = Game()
// game.score += 10
// print("Score is now \(game.score)")
// game.score -= 3
// print("Score is now \(game.score)")
// game.score += 1

//  so at the end i just forgot to print the line so how can we track the last updated change here  did set comes in action like when ever the property chhanges didset in sift automatically runs . Therefore i can add the print statement n the didi set block

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1


// willSet is called just before the value is stored. didSet is called immediately after the new value is stored.
//  So we can conclude that didSet has by default acess to oldValue and willset has acess too newValue
//  but note that we can not set the property observer to constant because it will never change its an obvious reason for this

//   and one more point to be noted that here that i can not take newValue access in didSet and can not take the oldValue access in the will set


struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
            
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
            
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Aastik mehta")

//  lets move on to our next topic custom iniatlisers 

struct Player{
    let name: String,
    let number: Int,
    
    init(name:String , number: Int){
        self.name = name;
        self.number = Int.random(in: 1...99)
        
    }
}

//  this simply creates a new player instance by providing values for its two properties . swift call this as memberWise initalisers  
//  definiton => an initaliserss that accepts the eachh property in the order it was defined


let player = Player(name: "Megan R",number: 15)
let anotherPlayer = Player(name: "Christanio Ronaldo",number: 20);
print(player.name)
print(player.number)
print()
print(anotherPlayer.name)
print(anotherPlayer.number)









