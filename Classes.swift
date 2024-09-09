// Classes
// First, the things that classes and structs have in common include:

// You get to create and name them.
// You can add properties and methods, including property observers and access control.
// You can create custom initializers to configure new instances however you want.

class Game {
    var score = 0 {
        
        willSet{
            print("Score is now \(score) willset")
        }
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

// class inheritance
class Employee {
    let hours: Int
    
    init(hours: Int){
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(hours) hours a day")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary(){
        print("I am a developer who works sometimes \(hours) hours a day")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robot = Developer(hours: 8)
let taylor = Manager(hours: 8)
robot.work()
taylor.work()
taylor.printSummary()
robot.printSummary()

//  if a child class wants to change a method from a parent class, you must use override in the child class’s version. 

// Swift is smart about how method overrides work: if your parent class has a work() method that takes no parameters, but the child class has a work() method that accepts a string to designate where the work is being done, that does not require override because you aren’t replacing the parent method.

// How to add iniatlisers for classes
class Vehicle {
    
    let isElectric : Bool
    
    init(isElectric: Bool){
        self.isElectric: isElectric
        
    }
}

class Car: Vehicle{
    let isCompatible : Bool
    
    init(isCompatible: Bool){
        self.isCompatible = isCompatible
        super.init(isElectric: isElectric);
    }
}

let teslaX = Car(isElectric: true,isCompatible: true)
