//: [Previous](@previous)

/*:
 ## What is an Enumeration?
 Enumerations are a data type found in many popular programming languages, but Swift extends their functionality, offering capabilities one would typically expect to find only in classes. In Swift, enumerations are truly first-class types.

 In this exercise, we will learn how to define and initialize an enum value.

 Enums are defined using the enum keyword and curly braces:

 enum MyDataType {
     // entire enum definition lives here
 }
 Use the case keyword to define the cases of your enum:
*/
 enum DogBreed1 {
     case corgi
     case husky
     case samoyed
     case shibaInu
 }
/*
 You can also shorten your code by entering all cases on a single line separated by commas:
*/
 enum DogBreed {
     case corgi, husky, samoyed, shibaInu
 }
/*
 To initialize an enum type value, you append the case name to the enum:
*/
 var bella = DogBreed.samoyed
/* Note that we could also make the variable, bella, a constant using let, but since we are going to change it, we use a var.

 One advantage of defining your own enums is that they constrain the values we can assign to them, so if we try to use a case that we haven’t defined, we will get a compile-time error:

 bella = DogBreeds.poodle // Causes compiler error because we have not defined the case of poodle
 Because the compiler knows bella is of the DogBreed type, we can safely leave off the DogBreed and set the value of bella using the shorter dot syntax:

 bella = .corgi
 Now that we know how to define and initialize enums, let’s define one of our own.
*/
/*: ## Instructions
 1. Define an enumeration named Vehicle.
*/
 


/*:
 2. Define three enumeration cases named: airplane, boat, and truck.
 */



/*:
 3. Initialize a variable value named myRide that is initially set to the truck case of the Vehicle type.
*/




/*:
  4. Set 'myRide' to be the airplane case using short dot syntax.
*/



 
//: [Next](@next)
