//: [Previous](@previous)

/*: ## Using Associated Values with Enumerations
 One of the powerful functionalities Swift adds to enums is the ability to store an associated value of any type attached to a case value. This is different from raw values because each case can have a different type of associated value or no associated value at all.

 To show how we can define an enum with an associated value, let’s start with this enum describing desserts:
*/
 enum Dessert1 {
     case cake
     case vanillaIceCream
     case brownie
 }
 /* We might have some business logic that needs to know how many scoops of ice cream we are serving or the particular flavor of the cake. We can define associated values for the Dessert enum using the following syntax:
*/
 enum Desserts {
     case cake(flavor: String)
     case vanillaIceCream(scoops: Int)
     case brownie
 }
/* To instantiate an enum with an associated value we use the following syntax:
*/
 let tonightsSpecial = Desserts.vanillaIceCream(scoops: 4)
/* To access the associated values, we can extract them in a switch statement
*/
switch tonightsSpecial {
    case let .cake(cakeFlavor):
        print("Time for \(cakeFlavor) cake")
    case let .vanillaIceCream(scoopCount):
        print("\(scoopCount) scoops of vanilla ice cream")
    case .brownie:
        print("Decadent goodness")
 }
  
 // Prints: 4 scoops of vanilla ice cream
 /* By using the let syntax in parenthesis after the switch case statement we extract the associated value as a constant.

 If an enumeration has a raw value, its cases can’t have associated values. This is because it wouldn’t be able to recreate both the case and the associated value from a single input.

 Let’s add an associated value to our Vehicle enum ✈️
*/
 
/*: ### Instructions
 1.Add an associated Bool value called isFourWheelDrive to the truck case in Vehicle.
 */
enum Vehicle {
    case truck // 1: Add associated value here
    case boat
    case airplane
}
let myRide = Vehicle.truck // 2: Set associated value here
/*:
 2.Set isFourWheelDrive to true in the declaration of myRide.
 */

/*:
 3.Extract isFourWheelDrive as a constant in the truck case within the switch statement.

*/
switch myRide{
    case .truck: // 3: Extract value here
    // 4: Add logic here
        print("Let's go to the store.")
    case .boat:
        print("Let's sail to Hawaii")
    case .airplane:
        print("Let's fly to Peru")
}
/*:4.Add logic to the truck case that prints "Let's go to the mountains" if isFourWheelDrive is true, and "Let's go to the store" if it is false.
 */
//: [Next](@next)
