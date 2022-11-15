//: [Previous](@previous)

/*:
 ## Iterating Over Enumeration Cases
 Enumerations aren’t technically one of the three primary collection types offered by Swift (Arrays, Sets, and Dictionaries). However, they do define a set of cases, and you may find yourself in a situation where it is convenient to iterate across all of the cases like you would with a collection. Let’s say that you are making an app where the user can select the season:
*/
 enum Season1 {
     case winter
     case spring
     case summer
     case fall
 }
/*:
 We need to be able to iterate over all the seasons to show them in an array. Since enumerations aren’t able to do this on their own, we need to utilize a protocol. You’ll learn about protocols more in-depth later, but all you need to know now is that protocols define a set of methods and properties that can be adopted by an enumeration.

 To iterate over the seasons, we’ll use the CaseIterable protocol. Here’s the syntax:
*/
 enum Season: CaseIterable {
     case winter
     case spring
     case summer
     case fall
 }
 /* CaseIterable gives us access to a property called allCases that returns an array of case values. We’ll append this property onto Season and iterate over each case with a for loop:
*/
 for season in Season.allCases {
     print(season)
 }
  
 /* Prints to the console:
 winter
 spring
 summer
 fall
 */

/*:### Instructions
 1. Give the Vehicle enumeration access to all of the properties and methods of the CaseIterable protocol.
  */

// 1: Make Vehicle conform to CaseIterable

enum Vehicle {
    case truck
    case boat
    case airplane
}



/*:
 2. Create a for loop that prints all of the cases of the Vehicle enum. */

// 2: Create for loop here

//: [Next](@next)
