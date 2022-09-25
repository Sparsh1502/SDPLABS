void main(List<String> args) {
  ///                 Collections

/*
///                   Lists
-> Creating a list => using '[]'
 var desserts =['cookies', 'cupcakes', 'donuts', 'pie'];
 desserts = [];  

  -> another syntex => using final/var
 var snacks2 = <String>[];
*/

/*
///               Printing lists       
 desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
 print(desserts);


 -> Accessing elements
final index = desserts.indexOf('pie');
final value = desserts[index];

->Adding elements to a list
desserts.add('brownies');
print(desserts);
// [cookies, cake, donuts, pie, brownies]
*/

/*
///                   Mutable and immutable lists
var arr = <int>[]; //mutable => using num,var
  //arr[1] = 12;
  arr.add(13);
  print(arr);
  final desserts = [
    'cookies',
    'cupcakes',
    'donuts',
    'pie'
  ]; 
  //immutable => final // immutable are those that can't be changed after assigned.
  
  desserts.remove('cupcakes'); // OK
  desserts.add('ice cream');
  // Creating deeply immutable list => using const keyword
  //   That is, every element of the list must also be a compile-time
  // constant.
  const desserts2 = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts2.add('brownie'); // not allowed


  -> Creating deeply immutable lists
  INFO: The solution to creating an immutable list is to mark the
variable name with the const keyword. This forces the list to
be deeply immutable.

const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
desserts.add('brownie'); // not allowed
desserts.remove('pie'); // not allowed
desserts[0] = 'fudge'; // not allowed

INFO: If you aren’t able to use const for the variable itself, you can
still make the value deeply immutable by adding the optional
const keyword before the value.

final desserts = const ['cookies', 'cupcakes', 'donuts', 'pie'];
*/

/*
///                      List properties

const drinks = ['water', 'milk', 'juice', 'soda'];

-> Accessing first and last elements
drinks.first // water
drinks.last // soda

-> Checking if a list contains any elements
drinks.isEmpty // false
drinks.isNotEmpty // true

-> Looping over the elements of a list
const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
desserts.forEach(print);
OUTPUT:
cookies
cupcakes
donuts
pie
*/

///                   Code as UI    
/*
->Spread operator
const pastries = ['cookies', 'croissants'];
const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];

const desserts = ['donuts', ...pastries, ...candy];
print(desserts);

--There’s also a null spread operator(...?), which will omit a
list if the list itself is null.
List<String>? coffees;
final hotDrinks = ['milk tea', ...?coffees];

-> Collection if
const peanutAllergy = true;
const candy = [
'Junior Mints',
'Twizzlers',
if (!peanutAllergy) 'Reeses',];
print(candy);
OUTPUT:  [Junior Mints, Twizzlers]

-> Collection for
const deserts = ['gobi', 'sahara', 'arctic'];
var bigDeserts = [
'ARABIAN',
for (var desert in deserts) desert.toUpperCase
(),
];
print(bigDeserts);  //[ARABIAN, GOBI, SAHARA, ARCTIC]
*/

/*
  // Mini-exercise
  // 1)
  var months = <String>[];
  months.add('January');
  months.add('February');
  months.add('March');
  months.add('April');
  months.add('May');
  months.add('June');
  months.add('July');
  months.add('August');
  months.add('September');
  months.add('October');
  months.add('November');
  months.add('December');
  print(months);
  // 2)
  final immutableMonths = [...months];
  print(immutableMonths);
  // 3)
  final newMonths = [for (var month in months) month.toUpperCase()];
  print(newMonths);
  */

///                      Sets
/// Sets => not allowed duplication
/*
->Creating a set
final Set<int> someSet = {};
  final someSet2 = <int>{};
  final anotherSet = {1, 3, 2, 7, 5, 6, 1, 2};
  print(anotherSet);  //{1, 3, 2, 7, 5, 6}
*/

/*
///                     Operations on a set

-> Adding single elements
--Checking the contents
 final anotherSet = {1, 3, 2, 7, 5, 6, 1, 2};
  print(anotherSet.contains(1)); // true
  print(anotherSet.contains(99)); // false

  ->Adding single elements
  final someSet = <int>{};
  someSet.add(42);
  someSet.add(2112);
  someSet.add(42);
  print(someSet); //{42, 2112}
*/

/*
///                        Intersections and Unions

-> Intersections
final setA = {8, 2, 3, 1, 4};
final setB = {1, 6, 5, 4};
final intersection = setA.intersection(setB);   //{1, 4}


-> Unions
final union = setA.union(setB); //{8, 2, 3, 1, 4, 6, 5}
*/

///                      Maps
//Map => key->value pair, keys of map should be unique
/*
final Map<String, int> emptyMap = {};
final emptySomething = {}; //Map<dynamic, dynamic>

-> Initializing a Map with values
final inventory = {
'cakes': 20,
'pies': 14,
'donuts': 37,
'cookies': 141,
};

final digitToWord = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
  };
  print(inventory);  //{cakes: 20, pies: 14, donuts: 37, cookies: 141}
  print(digitToWord); // {1: one, 2: two, 3: three, 4: four}

  -> Operations on a map

--Adding elements to a map
inventory['brownies'] = 3;

--Removing elements from a map
inventory.remove('cookies'); //{cakes: 1, pies: 14, donuts: 37, brownies: 3}
*/

/*
///Map properties

inventory.isEmpty // false
inventory.isNotEmpty // true
inventory.length //4

print(inventory.keys);  //(cakes, pies, donuts, brownies)
print(inventory.values); //(1, 14, 37, 3)
*/

/*
  // Mini-exercise
  // 1)
  final Map<String, String> info = {
    'name': 'Utsav',
    'profession': 'student',
    'country': 'India',
    'city': 'Nadiad'
  };
  print(info);
  // 2)
  info['city'] = 'Toronto';
  info['country'] = 'Canada';
  print(info);
  // 3)
  for (var entry in info.entries) {
    print('${entry.key} => ${entry.value}');
  }
  */

/*
///                       Higher order methods
/*
--> Mapping over a collection
const numbers = [1, 2, 3, 4];
final squares = numbers.map((number) => number *number);
// (1, 4, 9, 16)
*/

/*
--> Filtering a collection
using the where method

final evens = squares.where((square) => square.isEven);
// (4, 16)
*/

/*
-->  Using reduce
const amounts = [199, 299, 299, 199, 499];
final total = amounts.reduce((sum, element) => sum + element);
// 1495
*/

/*

*/
---> Using fold
const amounts = [199, 299, 299, 199, 499];
final total = amounts.fold(
0,
(int sum, element) => sum + element,);
*/

/*
--> Sorting a list
final desserts = ['cookies', 'pie', 'donuts', 'br
ownies'];
desserts.sort();
// [brownies, cookies, donuts, pie]
*/

/*
--> Reversing a list
var dessertsReversed = desserts.reversed;
// (pie, donuts, cookies, brownies)
*/

/*
 // Combining higher order methods
  const desserts = ['cake', 'pie', 'donuts', 'brownies'];
  final bigTallDesserts = desserts
  .where((dessert) => dessert.length > 5)
  .map((dessert) => dessert.toUpperCase());
  */

  /*
  // Mini-exercise
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  // 1)
  scores.sort();
  print('lowest: ${scores.first} , highest: ${scores.last}');
  // 2)
  final BGrades = scores.where((element) => element >= 80 && element <= 90);
  print(BGrades);
  // lowest: 32 , highest: 93
  // (82, 88, 89)
  */

  /*
  // Challenges
  // ch:1) : A unique request
  String para = "Hello World,Hello everyone";
  final words = uniqueRequest(para);
  print(words);

  // ch:2) Counting on you
  String para2 = 'HelloWorld';
  print(countCharacter(para2));

  // ch:3) Mapping users
  User user1 = User(1, 'Bob');
  User user2 = User(2, 'Ray');
  User user3 = User(3, 'Keta');
  List<User> users = [user1, user2, user3];

  print(listToMap(users));
}

Set<String> uniqueRequest(String para) {
  Set<String> uchars = {};
  for (int i = 0; i < para.length; i++) uchars.add(para[i]);

  return uchars;
}

Map<String, int> countCharacter(String para) {
  Map<String, int> chars = {};
  for (int i = 0; i < para.length; i++) {
    int count = chars[para[i]] ?? 0;
    chars[para[i]] = count + 1;
  }

  return chars;
}

class User {
  User(this.id, this.name);
  int id;
  String name;
}

Map<int, String> listToMap(var users) {
  var usersMap = <int, String>{};
  for (var user in users) {
    usersMap[user.id] = user.name;
  }
  return usersMap;
}
*/


}