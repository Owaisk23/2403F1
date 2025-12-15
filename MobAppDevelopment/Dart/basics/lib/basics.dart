import 'dart:io';
// FUNCTION
// datatype functionName(parameters){
//   // function body
//   return value;
// }
// no return
// void sayHello(){
//   print("Hello from function");
// }

// String greetUser(String name){
//   return "Hello, $name";
// }

// int addNumbers(int a, int b){
//   return a +b;
// }

void main(){
  // printing ways
  // print("Hello, In Dart Programming Language");
  // print("Dart Basics");

  // stdout.write("Hello in Pakistan");
  // stdout.write("Hello in Karachi");

  // var laptopName = "MacBook Pro";
  // int laptopPrice = 45000;
  // final laptopBrand = "Apple";
  // const pi = 3.14;
  // print("Laptop Name is: $laptopName");
  // print("Laptop Price is: $laptopPrice");
  // print("Laptop Brand is: $laptopBrand");
  // print("Value of Pi is: $pi");

  // dynamic age = "Twenty Five";

  // // // Numerical Data types
  // // // both positive and negative values
  // int temp = -15;
  // // floating values
  // double height = 5.11;
  // // both int and double values
  // num weight = 65.5;

  // // String Data Type
  // String country = "Pakistan";

  // // boolean T/F
  // bool isLoggedIn = true;

  // Conditional Statements
  // print("Enter your Name:");
  // String userName = stdin.readLineSync()!; //"Ali"
  // stdout.write("Enter your age: ");
  // int driverAge = int.parse(stdin.readLineSync()!); //30

  // if(driverAge >= 18){
  //   print("Hello $userName, You are eligible to drive a car");
  // } else {
  //   print("You are not eligible to drive a car " + userName);
  // }

  // // Odd / Even Number
  // stdout.write("Enter any number: ");
  // int number = int.parse(stdin.readLineSync()!);

  // stdout.write("Enter table limit: ");
  // int limit = int.parse(stdin.readLineSync()!);
  // if(number % 2 == 0){
  //   print('$number is Even Number');
  // }else{
  //   print('$number is Odd Number');
  // }


  // // print table program
  // for(int i=1; i <= limit; i++){
  //   print('$number x $i = ${number * i}');
  // }


// sayHello();

// String messg =greetUser("SaimPPP");
// print(messg);

// int sum = addNumbers(90, 15);
// print("Sum is $sum");


// DATA STRUCTURES
// // LIST
// List<String> stdNames = ["Abdullah", "Saim", "Azeem", "Hassan", "Burney"];
// print(stdNames);
// print(stdNames[3]);
// // read
// print(stdNames.length);
// print(stdNames.reversed);
// print(stdNames.hashCode);
// print(stdNames[3]);

// // create ya add
// stdNames.add("Zain");
// print(stdNames);

// // DELETE Element
// stdNames.removeAt(2);
// stdNames.remove("Hassan");
// print(stdNames);

// // // Update
// stdNames[1] = "SaimPPP";
// print(stdNames);

// Set:Unordered Collection of unique items
// usecase: username, email, phone numbers, productIds, country
// Set<String> userEmails = {"owais@gmail.com", "zunno55@gmail.com", "burneyppp@yahoo.com"};

// // Create
// userEmails.add("mahmed@gmail.com");

// print(userEmails.contains("owais@gmail.com"));

// userEmails.remove("burneyppp@yahoo.com");
// print(userEmails);

// Map: jab humare pas Key Value k pairs houn tou Map use kraty

Map<String, dynamic> userProfile = {
  "name": "SaimPPP",
  "age": 25,
  "isLoggedIn": true,
  "email": "saimppp@yahoo.com"
};

// // add
userProfile["country"] = "Pakistan";

// // remove
userProfile.remove("age");
print(userProfile);

// // update
userProfile["name"] = "Saim Burney";
print(userProfile);

// // clear
userProfile.clear();
print(userProfile);


}