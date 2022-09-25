 void main(List<String> args) {
  
  /*
  ///             BOOLEAN VALUES
  const bool yes = true;
const bool no = false;

INFO : Because of Dart’s type inference, you can leave off the type annotation:
const yes = true;
const no = false;
 */  

/*                
///                   TESTING EQUALITY
const doesOneEqualTwo = (1 == 2);
print(doesOneEqualTwo); //false
*/

/*
///                     TESTING INEQUALITY
const doesOneNotEqualTwo = (1 != 2);
const alsoTrue = !(1 == 2);
*/

/*
///                       Testing greater and less than
const isOneGreaterThanTwo = (1 > 2);
const isOneLessThanTwo = (1 < 2);

print(1 <= 2); // true
print(2 <= 2); // true

print(2 >= 1); // true
print(2 >= 2); // true
*/

///              Boolean logic

/*
///                 AND operator
const isSunny = true;
const isFinished = true;
const willGoCycling = isSunny && isFinished;

///               OR operator
const willTravelToAustralia = true;
const canFindPhoto = false;
const canDrawPlatypus = willTravelToAustralia ||
canFindPhoto;

///               Operator precedence
const andTrue = 1 < 2 && 4 > 3;
const andFalse = 1 < 2 && 3 > 4;
const orTrue = 1 < 2 || 3 > 4;
const orFalse = 1 == 2 || 3 == 4;

///                   Overriding precedence with parentheses
3 > 4 && (1 < 2 || 1 < 4) // false
(3 > 4 && 1 < 2) || 1 < 4 // true

///                    String equality
INFO: dogEqualsCat is a Boolean, which in this case is false
because the string 'dog' does not equal the string 'cat'.
const guess = 'dog';
const dogEqualsCat = guess == 'cat';
*/ 

/*
  // Mini-excercises
  // 1. Create a constant called myAge and set it to your age.
  // Then, create a constant named isTeenager that uses
  // Boolean logic to determine if the age denotes someone
  // in the age range of 13 to 19.
  const myAge = 19;
  const isTeenager = (myAge >= 13 && myAge <= 19);
  print(isTeenager ? 'Teenager' : 'Not a teenager');
  // 2. Create another constant named maryAge and set it to 30.
  // Then, create a constant named bothTeenagers that uses
  // Boolean logic to determine if both you and Mary are
  // teenagers.
  const maryAge = 30;
  const bothTeenagers =
      (myAge >= 13 && myAge <= 19) && (maryAge >= 13 && maryAge <= 19);
  print(bothTeenagers ? 'Both are Teenager' : 'Not teenagers');
  // 3. Create a String constant named reader and set it to
  // your name. Create another String constant named ray
  // and set it to 'Ray Wenderlich'. Create a Boolean
  // constant named rayIsReader that uses string equality
  // to determine if reader and ray are equal.
  const reader = "Prince";
  const ray = "Ray Wenderlich";
  const rayIsReader = (reader == ray);
  print(rayIsReader);
  */



/*
///         Variable scope
const global = 'Hello, world';
void main() {
const local = 'Hello, main';
if (2 > 1) {
const insideIf = 'Hello, anybody?';
print(global);
print(local);
print(insideIf);
}
print(global);
print(local);
print(insideIf); // Not allowed!
*/

/*
///                     The ternary conditional operator
const score = 83;
const message = (score >= 60) ? 'You passed':
'You failed';
*/

/*
// Mini-exercises
  // 1. Create a constant named myAge and initialize it with
  // your age. Write an if statement to print out “Teenager”
  // if your age is between 13 and 19, and “Not a teenager” if
  // your age is not between 13 and 19.

  //const myAge = 19;
  //if (myAge >= 13 && myAge <= 19) {
    //print("Teenager");
  //} else {
    //print("Not a Teenager");
  //}

  // 2. Use a ternary conditional operator to replace the else-
  // if statement that you used above. Set the result to a
  // variable named answer.

  //var answer = (myAge >= 13 && myAge <= 19);
  //print(answer ? 'Teenager' : 'Not a teenager');
*/

/*
///                  Switch statements
const number = 3;
switch (number) {
case 0:
print('zero');
break;
case 1:
print('one');
break;
case 2:
print('two');
break;
case 3:
print('three');
break;
case 4:
print('four');
break;
default:
print('something else');
}

-> Switching on strings

const weather = 'cloudy';
switch (weather) {
case 'sunny':
print('Put on sunscreen.');
break;
case 'snowy':
print('Get your skis.');
break;
case 'cloudy':
case 'rainy':
print('Bring an umbrella.');
break;
default:
print("I'm not familiar with that weather."
);
*/

/*
///             Enumerated types
const weather = 'I like turtles.';

enum Weather {
sunny,
snowy,
cloudy,
rainy,
}

-> Switching on enums

const weatherToday = Weather.cloudy;
switch (weatherToday) {
case Weather.sunny:
print('Put on sunscreen.');
break;
case Weather.snowy:
print('Get your skis.');
break;
case Weather.cloudy:
case Weather.rainy:
print('Bring an umbrella.');
break;
//Bring an umbrella.

->Enum values and indexes
print(weatherToday);
// Weather.cloudy
*/

/*
// Mini-exercises
  // 1. Make an enum called AudioState and give it values
  // to represent playing, paused and stopped states.

  // 2. Create a constant called audioState and give it an
  // AudioState value. Write a switch statement that
  // prints a message based on the value.

  //const audioState = AudioState.paused;
  //switch (audioState) {
   // case AudioState.playing:
     // print("It is playing");
      //break;
    //case AudioState.paused:
      //print("It is paused");
      //break;
    //case AudioState.stopped:
      //print("It is stopped");
      //break;
  //}
//}
*/
}