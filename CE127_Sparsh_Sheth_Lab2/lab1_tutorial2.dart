void main(){
  /*
  ///                          COMMENTING CODE
  
  ->Single line comment:

   // This is a comment. It is not executed.  

  ->Multi-line comments

   // This is also a comment,
// over multiple lines.    

OR

/* This is also a comment. Over many...
many...
many lines. */       

  ->Nest comments

/* This is a comment.
/* And inside it is
another comment. */
Back to the first. */     

->Documentation comments

INFO: Single-line documentation comments begin with ///
EG:
///I am a documentation comment

INFO: Block documentation comments are enclosed between /** and */.
EG:
/**
* me too!
 */

 */


/*
 ///                      PRINTING OUTPUT
 
 print('Hello, Dart Apprentice reader!');
 //Output : Hello, Dart Apprentice reader!
*/

///                     STATEMENTS AND EXPRESSIONS

/*
///                         EXPRESSIONS
 INFO: Expressions : an expression is a value, or is something that can be calculated as a value.
 e.g : 42 ,3 + 2 , 'Hello, Dart Apprentice reader!' , x

*/

/*
///                      ARITHMETIC OPERATIONS

print(2 + 6); //output : 8
print(2+6);  //output : 8

->DECIMAL

print(22 / 7); //output: 3.142857142857143

print(22 ~/ 7); //output: 3  //integer division 

INFO: Euclidean modulo operator is the % symbol.

print(28 % 10); //output : 8
print(((8000 / (5 * 10)) - 32) ~/ (29 % 5)); // output: 32
print(350 / 5 + 2); //output: 72.0

->MATH FUNCTIONS

print(sin(45 * pi / 180));  // 0.7071067811865475
print(cos(135 * pi / 180)); // -0.7071067811865475
print(sqrt(2)); // 1.4142135623730951
print(max(5, 10);  // 10
print(min(-5, -10); // -10
print(max(sqrt(2), pi / 2);  // 1.5707963267948966
*/


/*
///                          NAMING DATA

->VARIABLES

int number = 10; // type annotation
print(10.isEven); // true
print(3.14159.round());// 3

int myInteger = 10;
//myInteger = 3.14159; // No, no, no. That's not allowed.   //TYPE SAFETY

num myNum;
myNum=10; //ok
myNum=3.14159 //ok
//myNum="t"; //no

->The dynamic type
dynamic myVar;
myVar = 10; //ok
myVar = 3.14159; //ok
myVar = 'ten'; //ok

->Type inference
var someNumber = 10;
someNumber = 15; // OK
//someNumber = 3.14159; // No, no, no.

->Constants

//const constants
const myConstant = 10;
//myConstant = 0; // Not allowed.

->Final constants
//final hoursSinceMidnight = DateTime.now().hour;
*/
/*

->Increment and decrement
var counter = 0;
counter += 1; // counter = 1;
counter -= 1; // counter = 0;

var counter = 0;
counter++; // 1
counter--; // 0

double myValue = 10;
myValue *= 3; // same as myValue = myValue * 3;
// myValue = 30.0;
myValue /= 2; // same as myValue = myValue / 2;
// myValue = 15.0;

*/


/*
//Challenges
//1
const int myAge=19;
int dogs = 0;
dogs+=1; //1

//2
int age=16;
print(age);
age=30;
print(age);

//3
const x = 46;
const y = 10;
const answer1 = (x * 100) + y; //4610
const answer2 = (x * 100) + (y * 100); //5600
const answer3 = (x * 100) + (y / 10); // 4601.0

//4
const double rating1 = 1.31;
const double rating2 = 2.34;
const double rating3 = 3.45;
const double avg = (rating1+rating2+rating3)/3;
print(avg); //2.3666666666666667

//5
const double a = 1.00;
const double b = 5.00;
const double c = 6.00;

double x = ((-b)+(sqrt(b*b - 4*a*c)))/(2*a);
print(x); // -2
x =  ((-b)-(sqrt(b*b - 4*a*c)))/(2*a);
print(x); // -3

*/

}