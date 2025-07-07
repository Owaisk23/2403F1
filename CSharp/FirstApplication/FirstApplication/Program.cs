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

//Console.WriteLine(userName + " " + "age: " + age + " lucky number: " + number + " char is: " + alpha + " has height: " + height + " has valid ID: " + isValid);

//Arithematic Operators

//Console.WriteLine(90 + 30);
//Console.WriteLine(90 - 30);
//Console.WriteLine(90 * 30);
//Console.WriteLine(90 / 30);
//Console.WriteLine(90 % 30);

//Assignment Operator

//int num = 11;

//Console.WriteLine(num += 4); //num = num + 4
//Console.WriteLine(num -= 4); //num = num - 4
//Console.WriteLine(num *= 4); //num = num * 4
//Console.WriteLine(num /= 4); //num = num / 4
//Console.WriteLine(num %= 4); //num = num % 4

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

//Console.WriteLine(a <= b && a != b); //TRUE
//Console.WriteLine(a >= b && a != b); //FALSE

//OR
//T  T = T
//T  F = T
//F  T = T
//F  F = F

//Console.WriteLine(a <= b || a != b); //TRUE
//Console.WriteLine(a >= b || a != b); //TRUE
//Console.WriteLine(a >= b || a == b); //FALSE


// NOT !

//Console.WriteLine(!(a == b)); // FAlSE
//Console.WriteLine(a != b); // TRUE

// SALARY SYSTEM
//Console.WriteLine("Enter your salary..");

//int salary = Int32.Parse(Console.ReadLine());

//Console.WriteLine("Your Salary: " + salary);


//SWITCH 1 to 7 || 1==Monday   7==Sunday

Console.WriteLine("Enter number between 1 to 7");
int num = Int32.Parse(Console.ReadLine());

switch (num)
{
    case 1:
        Console.WriteLine("Monday");
        break;
    case 2:
        Console.WriteLine("Tuesday");
        break;
    case 3:
        Console.WriteLine("Wednesday");
        break;
    case 4:
        Console.WriteLine("Thursday");
        break;
    case 5:
        Console.WriteLine("Friday");
        break;
    case 6:
        Console.WriteLine("Saturday");
        break;
    case 7:
        Console.WriteLine("Sunday");
        break;
    default:
        Console.WriteLine("Invalid Number");
        break;
}


//sting interpolation

int six = 6;

Console.WriteLine($"This is some number: {six * 2}");































