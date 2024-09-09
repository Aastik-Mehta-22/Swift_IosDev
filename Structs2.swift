// Howw to limit access using acess data alimit control 
struct BankAccount{
    private var funds = 0;
    
    mutating func deposit(amount: Int){
        funds += amount;
    }
    
    mutating func withdraw(amount:Int) -> Bool {
        
        if funds >= amount{
            funds -= amount;
            
            return true
        }
        else{
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 500)
// print(account.funds) // we can not access it if it is private
// But the funds property is just exposed to us externally, so what’s stopping us from touching it directly?
// account.funds += 300;
// print(account.funds)
// there for we are using private heere


// Note 
// Swift provides us with several options, but when you’re learning you’ll only need a handful:

// Use private for “don’t let anything outside the struct use this.”
// Use fileprivate for “don’t let anything outside the current file use this.”
// Use public for “let anyone, anywhere use this.”

//static property

struct School {
    static var studentCount = 0;
    
    static func add(student: String){
        print("\(student) joined the school")
        studentCount += 1;
        
    }
}

School.add(student: "aastik") //we need not to create any instance for this object because they are independent
print(School.studentCount)  




