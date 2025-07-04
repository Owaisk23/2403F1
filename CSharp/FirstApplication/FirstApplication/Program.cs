// See https://aka.ms/new-console-template for more information
Console.WriteLine("Hello, World!");
Console.WriteLine("C# FIRST CLASS");

//DATATYPES
//string
string userName = "Muhammad Ahmed";

char alpha = 'Z';
//numbers
byte age = 23; //max number 255

int number = 786;

long largeNum = 1314352176234865698L;

float height = 5.11F;

double dNum = 990.786D;

decimal deciNum = 770012.1562M;

//Boolean

bool isValid = false;

Console.WriteLine(userName + " " + "age: " + age + " lucky number: " + number + " char is: " + alpha + " has height: " + height + " has valid ID: " + isValid);

//Arithematic Operators

Console.WriteLine(90 + 30);
Console.WriteLine(90 - 30);
Console.WriteLine(90 * 30);
Console.WriteLine(90 / 30);
Console.WriteLine(90 % 30);

//Assignment Operator

int num = 11;

Console.WriteLine(num += 4); //num = num + 4
Console.WriteLine(num -= 4); //num = num - 4
Console.WriteLine(num *= 4); //num = num * 4
Console.WriteLine(num /= 4); //num = num / 4
Console.WriteLine(num %= 4); //num = num % 4

//Comparison Operators (True/ False)

int a = 45; int b = 70;

//Console.WriteLine(a == b); //F
//Console.WriteLine(a != b); //T
//Console.WriteLine(a > b); //F
//Console.WriteLine(a < b); //T
//Console.WriteLine(a >= b); //F
//Console.WriteLine(a <= b); //T

//Logical Operators(AND &&, OR ||, NOT !)
//AND
//T  T = T
//T  F = F
//F  T = F
//F  F = F

Console.WriteLine(a <= b && a != b); //TRUE
Console.WriteLine(a >= b && a != b); //FALSE

//OR
//T  T = T
//T  F = T
//F  T = T
//F  F = F

Console.WriteLine(a <= b || a != b); //TRUE
Console.WriteLine(a >= b || a != b); //TRUE
Console.WriteLine(a >= b || a == b); //FALSE




























