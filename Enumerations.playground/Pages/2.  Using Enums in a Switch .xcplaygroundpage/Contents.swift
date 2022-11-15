//: [Previous](@previous)
/*: ## Using Enumerations in a Switch Control Flow
 A switch statement is a common place you might want to use an enum. Switch statements must be exhaustive. This means that each possible case must be addressed explicitly by the control flow. Using an enum type in the switch statement can prevent us from accidentally forgetting to address a case.

 Let’s look at this switch control flow that uses a String type value:
*/
 let myPet = "kitty"
  
 switch myPet {
 case "goldfish":
     print("I’m not fluffy but I like to swim")
 case "kitty":
     print("I’m fluffy but I’m not a big swimmer")
 case "puppy":
     print("I’m fluffy and I love to swim")
 default:
     print("I'm not really sure what I am")
 }
/*:
 While this works, there is some room for improvement. Because switch statements must be exhaustive, we need to include the default case to cover situations where myPet is equal to a value other than “goldfish”, “kitty”, or “puppy”. However, if we know all of the possible values of myPet, then we should always be able to print out the right description. Also, if you add additional cases to the switch statement it could introduce unexpected behavior down the road.

 Let see how we can improve the readability and robustness of this code by using an enum:
*/
 enum Pet {
    case goldfish
    case kitty
    case puppy
 }
  
 let myPet2 = Pet.puppy
  
 switch myPet2 {
     case .goldfish:
          print("I’m not fluffy but I like to swim")
     case .kitty:
          print("I’m fluffy but I’m not a big swimmer")
     case .puppy:
         print("I’m fluffy and I love to swim")
 }
  
 // Prints: I'm fluffy and I love to swim

 
/*:  ## Instructions
 
 1. Create a variable named myRide that is an instance of Vehicle of the truck case.

*/
enum Vehicle {
    case airplane
    case boat
    case truck
}

// 1: Add instance of Vehicle here

 


/*: 2. Create a switch statement that uses the myRide variable as the expression and has three cases in the switch statement:
  * One for airplane that prints "Let's fly to Peru".
  * One for boat that prints "Let's sail to Hawaii".
  * One for truck that prints "Let's drive to the store".
 
  */

// 2: Add switch statement here





 
 
//: [Next](@next)
