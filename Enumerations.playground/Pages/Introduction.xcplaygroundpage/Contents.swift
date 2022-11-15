/*:
 ## ENUMERATIONS
 Introducing Enumerations
 With some forms of information, we know all of the possible values that can exist. Let’s say you’re building a transportation app. Users can either travel by truck, plane, or boat.

 We could just use a String to store that information:

 var myRide = "truck"
 But that could let us assign myRide to something that’s not a valid ride type:

 myRide = "winged monkeys"
 That’d be pretty confusing for a user to see! Fortunately, Swift allows us to restrict the possible values that a variable could be.

 An enumeration, often shortened to enum (pronounced ee-num), is a way to define your own group of related values and work with them in a type-safe manner. With the enum below, we’ll always know which vehicles are valid:

*/
enum Vehicle {
    case airplane
    case boat
    case truck
}
