//: [Previous](@previous)

/*: ### Defining Raw Values for Enumeration Cases
 
 In some other programming languages, enumerations are built using another underlying type. For example, in C++, enumerations are actually a set of integers.

 The Swift implementation of enumerations is much more flexible, allowing you to assign a raw value to each case. You can assign Strings, Characters, Ints, Doubles, and Floats as a raw value. However, you can only assign one raw value type per enumeration. This could be useful for situations where each case has a value attached to it that is used by your code logic in some capacity.
*/
 enum Emoji: String {
     case bee = "🐝"
     case brain = "🧠"
     case heartEyes = "😍"
 }
/*
 By using the : String syntax and the assignment operator =, we explicitly assign each of the Emoji enumeration cases underlying raw String values.

 We access the raw values using the .rawValue property.
*/
 print(Emoji.brain.rawValue) // Prints: 🧠
/* If we use Int or String raw values, we can also implicitly assign values for each case by explicitly assigning the first case like so:
*/
 enum Team: Int {
     case alpha = 1
     case bravo
     case charlie
     case delta
 }
  
 print(Team.delta.rawValue) // Prints: 4
 
/*Because the first case, alpha, is assigned the integer value of 1, the compiler infers that bravo should have a raw value of 2 and so on. If you use Strings as raw values and do not explicitly assign a value, the compiler will use the name of the case as its raw value.

 Once we assign raw values for an enumeration, we can then initialize an instance using a raw value like so:
*/
 enum Weekday: Int {
     case monday = 1
     case tuesday
     case wednesday
     case thursday
     case friday
 }
  
 let birthday = Weekday(rawValue: 3)
  
 // birthday is of type Weekday? and equals Weekday.wednesday
 /* You might be wondering what the question mark on Weekday? means. The ? symbol indicates an Optional type which means the value can either be some value or a nil value. We will be covering Optionals in-depth in a later lesson, but you can learn more about them here.

 Because it is possible that someone enters a raw value that isn’t assigned to any case in the Weekday enumeration, initializing from a raw value can return nil.

 If you create an enumeration with String raw values and don’t provide any values, the raw value will be the same as the case name:
*/
 enum Status: String {
     case complete
     case pending
     case rejected
 }
  
 let myStatus = Status.complete
 print(myStatus.rawValue) // Prints: complete

/*: ### Instructions
 1. Make the Vehicle enumeration store raw values of the Character type.
*/
enum Vehicle { // 1: Define the raw value type here
    case truck
    case boat
    case airplane
}
/*: 2.Explicitly assign the value of "T" to the truck case, "B" to the boat case, and "A" to the airplane case.
*/
// 2: Explicitly assign values to these cases

/*:
 3. Print the raw value of the airplane case to the console.
*/
// 3: Print the raw value here



/*:
 4. Create a constant called myBoat and assign an instance of Vehicle of the case boat using its raw value.

 */
// 4: Define constant here

 




//: [Next](@next)
