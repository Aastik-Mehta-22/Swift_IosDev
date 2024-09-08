// func printTable(for number: Int, end: Int = 12){ // here 12 is default value
//     for i in 1...end{
//         print("\(i) X \(number) = \(i*number)");
//     }
// }

// printTable(for: 5,end: 20)
// printTable(for: 6)

// Handle errors gracefully in swift
enum PasswordError: Error{
    case short,obvious
}


// If a function is able to throw errors without handling them itself, you must mark the function as throws before the return type.
// We don’t specify exactly what kind of error is thrown by the function, just that it can throw errors.

func passwordChecker(_ password: String) throws -> String{
    if password.count < 5 {
        throw PasswordError.short;
    }
    
    if password == "12345"{
        throw PasswordError.obvious;
    }
    
    if password.count < 8{
        return "OK";
    }
    else if password.count < 10 {
        return "Good";
    }
    else{
        
        return "Excellent";
    } 
}

let string = "123456"

do {
    let result = try passwordChecker(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}

let stringother = "123456hello"

do {
    let result = try passwordChecker(stringother)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

