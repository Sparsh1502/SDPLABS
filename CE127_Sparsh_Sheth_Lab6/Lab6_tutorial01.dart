void main(List<String> args) {
  
  /*
  ///             Futures
  
/*
  -->The Future type
  Future<int> countTheAtoms();

final myFuture = Future<int>.delayed(
Duration(seconds: 1),
() => 42,
);
print(myFuture);
*/

/*
///   Getting the result with callbacks
--A callback is an anonymous function that willrun after some
event has completed.

print('Before the future');
final myFuture = Future<int>.delayed(
Duration(seconds: 1),
() => 42,
)
.then(
(value) => print('Value: $value'),
)
.catchError(
(error) => print('Error: $error'),
)
.whenComplete(
() => print('Future is complete'),
);
print('After the future');

OUTPUT:
Before the future
After the future
Value: 42
Future is complete.
*/

/*
///  Getting the result with async-await
Future<void> main() async {
print('Before the future');
final value = await Future<int>.delayed(
Duration(seconds: 1),
() => 42,
);
print('Value: $value');
print('After the future');
}
Before the future
Value: 42
After the future
*/

/*
///Try-catch blocks with async-await
print('Before the future');
try {
final value = await Future<int>.delayed(
Duration(seconds: 1),
() => 42,
);
print('Value: $value');
} catch (error) {
print(error);
} finally {
print('Future is complete');
}
print('After the future');

Before the future
Value: 42
Future is complete
After the future
*/


/*
/// Catching an error
throw Exception('There was an error');

Before the future
Exception: There was an error
Future is complete
After the future
*/
  */


///Creating a data class

/*
class Todo {
Todo({
required this.userId,
required this.id,
required this.title,
required this.completed,
});
factory Todo.fromJson(Map<String, Object?> jso
nMap) {
return Todo(
userId: jsonMap['userId'] as int,
id: jsonMap['id'] as int,
title: jsonMap['title'] as String,
completed: jsonMap['completed'] as bool,
);
}
final int userId;
final int id;
final String title;
final bool completed;
@override
String toString() {
return 'userId: $userId\n'
'id: $id\n'
'title: $title\n'
'completed: $completed';

}
}

-->>Adding the necessary imports

INSIDE pubspec.yaml
dependencies:
http: ^0.13.1
*/

/*
/// Making a GET request
Future<void> main() async {
final url = 'https://jsonplaceholder.typicode.c
om/todos/1';
final parsedUrl = Uri.parse(url);
final response = await http.get(parsedUrl);
final statusCode = response.statusCode;
if (statusCode == 200) {
final rawJsonString = response.body;
final jsonMap = jsonDecode(rawJsonString);
final todo = Todo.fromJson(jsonMap);
print(todo);
} else {
throw HttpException('$statusCode');
}
}


///Streams
/*
//Reading as a string
import 'dart:io';
Future<void> main() async {
final file = File('assets/text.txt');
final contents = await file.readAsString();
print(contents);
}

//Reading from a stream
final file = File('assets/text_long.txt');
final stream = file.openRead();
stream.listen(
(data) {
print(data.length);
},
);

//Using a callback
final file = File('assets/text_long.txt');
final stream = file.openRead();
stream.listen(
(data) {
print(data.length);
},
onError:(error) {
print(error);
},
onDone:() {
print('All finished');
},
);

//Cancelling a stream
//Future<void> main() async {
final file = File('assets/text_long.txt');
final stream = file.openRead();
StreamSubscription<List<int>>? subscription;
subscription = stream.listen(
(data) {
print(data.length);
subscription?.cancel();
},
cancelOnError: true,
onDone: () {
print('All finished');
},
);
}
*/

///Isolates
/*
/*
-> Using a send port to return results
void playHideAndSeekTheLongVersion(SendPort send
Port) {
var counting = 0;
for (var i = 1; i <= 1000000000; i++) {
counting = i;
}
sendPort.send('$counting! Ready or not, here I
come!');
}
*/
/*
//Spawning the isolate and listening for messages
final receivePort = ReceivePort();
// 2
final isolate = await Isolate.spawn(
playHideAndSeekTheLongVersion,
// 3
receivePort.sendPort,
);
// 4
receivePort.listen((message) {
print(message);
// 5
receivePort.close();
isolate.kill();
});
*/

*/

*/
}