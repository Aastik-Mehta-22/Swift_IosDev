// Dictionaries don’t store items according to their position like arrays do, but instead let us decide where items should be stored.

let employee2 = [
"name" : "Taylor", 
"job" : "coder" , 
"location" : "punjab",

]

// print(employee2["name"])
// print(employee2["job"]) // gives warnings

print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])

let hasGraduated = [
    "sahil":true,
    "sunil":false
]

print(hasGraduated["sunil", default: true])


var heights = [String : Int]() // here we are creating empty dictionary

heights["simple"] = 300
heights["big"] = 600
heights["Mt everest"] = 900

print(heights["big",default: 200])


print(heights.count)
