import 'dart:io';

void main(){
  // printing ways
  print("Hello, In Dart Programming Language");
  print("Dart Basics");

  stdout.write("Hello in Pakistan");
  // stdout.write("Hello in Karachi");

  var laptopName = "MacBook Pro";
  int laptopPrice = 45000;
  final laptopBrand = "Apple";
  const pi = 3.14;
  print("Laptop Name is: $laptopName");
  print("Laptop Price is: $laptopPrice");
  print("Laptop Brand is: $laptopBrand");
  print("Value of Pi is: $pi");

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
  print("Enter your Name:");
  String userName = stdin.readLineSync()!; //"Ali"
  stdout.write("Enter your age: ");
  int driverAge = int.parse(stdin.readLineSync()!); //30

  if(driverAge >= 18){
    print("Hello $userName, You are eligible to drive a car");
  } else {
    print("You are not eligible to drive a car " + userName);
  }






}