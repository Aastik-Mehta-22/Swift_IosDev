// Loops

let platforms = ["Ios" , "Android" ,"WatchOs" , "MacOs"]

for os in platforms {
    print("Swift works great on \(os)")
}

for name in platforms {
    print("Swift works great on \(name).")
}

// for i in 1...12{
//     print("5 X \(i) = \(5*i)")
// }
// The 1...12 part is a range, and means “all integer numbers between 1 and 12, as well as 1 and 12 themselves.” Ranges are their own unique data type in Swift.

// print()
// for i in 1...12 {
//     print("The \(i) times table:")

//     for j in 1...12 {
//         print("\(j) x \(i) is \(j * i)")
//     }

//     print()
// }

for i in 1..<5 {
    print(i)
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += "hate"
}

print(lyric)


// while loop => Swift has a second kind of loop called while: provide it with a condition, and a while loop will continually execute the loop body until the condition is false.

var countDown = 10;

while countDown > 0 {
    print("\(countDown)...")
    countDown -= 1;
}
print("Blast")

var roll = 0;

while roll != 20 {
    roll =  Int.random(in: 1...30)
    print("I rolled a \(roll)")
}

print("Critical Hit")


// how to skip items with break and continue 
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for file in filenames {
    
    if file.hasSuffix(".jpg") == false{
        continue;
    }
    
    print("Found file: \(file)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)