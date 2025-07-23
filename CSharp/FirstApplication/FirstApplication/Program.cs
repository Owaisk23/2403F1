// See https://aka.ms/new-console-template for more information
using System.Collections;

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
//Console.WriteLine("Enter Salary..");

//int salary = Int32.Parse(Console.ReadLine());

//if (salary > 50000 && !(salary >= 80000))
//{
//    Console.WriteLine("Good salary...");
//}
//else if (salary < 50000)
//{
//    Console.WriteLine("Do you get fuel allowance?");
//    string answer = Console.ReadLine();

//    answer = answer.ToLower();// yes  or y

//    if (answer == "yes" || answer == "y")
//    {
//        Console.WriteLine("Sounds Goood!!");
//    }
//    else if (answer == "no" || answer == "n")
//    {
//        Console.WriteLine("Try to switch your job ASAP!!");
//    }
//    else
//    {
//        Console.WriteLine("Please enter yes or no.");
//    }
//}
//else
//{
//    Console.WriteLine("Great!! MASHALLAH");
//}


//SWITCH 1 to 7 || 1==Monday   7==Sunday

//Console.WriteLine("Enter number between 1 to 7");
//int num = Int32.Parse(Console.ReadLine());

//switch (num)
//{
//    case 1:
//        Console.WriteLine("Monday");
//        break;
//    case 2:
//        Console.WriteLine("Tuesday");
//        break;
//    case 3:
//        Console.WriteLine("Wednesday");
//        break;
//    case 4:
//        Console.WriteLine("Thursday");
//        break;
//    case 5:
//        Console.WriteLine("Friday");
//        break;
//    case 6:
//        Console.WriteLine("Saturday");
//        break;
//    case 7:
//        Console.WriteLine("Sunday");
//        break;
//    default:
//        Console.WriteLine("Invalid Number");
//        break;
//}


//sting interpolation

//int six = 6;

//Console.WriteLine($"This is some number: {six * 2}");


//Loops
//for loop

//for(int i = 0; i <= 70; i++)
//{
//    Console.WriteLine(i);
//}

//for(int i = 50; i >= 0; i--)
//{
//    Console.WriteLine(i);
//}

//Odd Numbers
//for(int i = 1; i <= 101; i++)
//{
//    if(i%2 != 0)
//    {
//        Console.WriteLine(i);
//    }
//}

//PRIME NUMBER



//WHILE Loop

//int k = 23;

//while(k < 23)
//{
//    Console.WriteLine(k);
//    k++;
//}


//Do- While

//int j = 10;
//do
//{
//    Console.WriteLine("J");
//    j++;
//} while (j < 23);


//int num;

//char ans;

//do
//{
//    Console.WriteLine("Enter any number");
//    num = Convert.ToInt32(Console.ReadLine());

//    if (num % 2 == 0)
//    {
//        Console.WriteLine("Even Number");
//    }
//    else
//    {
//        Console.WriteLine("Odd Number");
//    }

//    Console.WriteLine("Do you want to continue?? Press Y");
//    ans = Convert.ToChar(Console.ReadLine());
//} while (ans == 'Y' || ans == 'y');


// ARRAY FIXED SIZED

//int[] temperatures = new int[5];
////                          length

//temperatures[0] = 43;
//temperatures[1] = 40;
//temperatures[2] = 13;
//temperatures[3] = 23;
//temperatures[4] = 33;
////temperatures[5] = 60;


//Console.WriteLine(temperatures[4]);

//int[] itemPrice = { 440, 60, 120, 770, 1200, 800 };

//foreach (var item in itemPrice)
//{
//    Console.WriteLine(item);
//}


//string[] countries = { "Pak", "Ind", "Afg", "Iran", "Iraq", "China", "Pak", "America" };

//Array.Sort(countries);
//Array.Reverse(countries);



//foreach (var country in countries){ 
//    Console.WriteLine(country);
//}

//Console.WriteLine(Array.IndexOf(countries, "China"));
//Console.WriteLine(Array.LastIndexOf(countries, "Pak"));


//Multi Dimensional Arrays

//int[,] multiArr =
//{
//    {23, 55},
//   //00   01
//    {27, 25},
//  //10   11
//    {25, 35},
// //  20   21
//    {24, 45},
//    {21, 65},
//    {20, 75},
//};

//Console.WriteLine(multiArr[1, 1]);


//for(int i = 0; i < multiArr.GetLength(0); i++)
//{
//    for(int j = 0; j < multiArr.GetLength(1); j++)
//    {
//        Console.WriteLine(multiArr[i, j]);
//    }
//}

//C# unintialized variables bool = true, int = 0, str = null default values

//Math.Power 

//Console.WriteLine(Math.Pow(3,3));


//Jagged Array
//size of sub array is not fixed


//string[][] skillSet =
//{
//    new string[6] {"Html", "CSS", "JS", "Bootsrap", "SEO", "UIUX"},
//    new string[5] {"Mysql", "PHP", "PJS", "LARAVEL", "FME"},
//    new string[3] {"SQL Server", "C#", ".Net MVC"},
//    new string[2] {"Dart", "Flutter"}
//};

//Console.WriteLine(skillSet[3][1]);


//for(int i = 0; i < skillSet.Length; i++)
//{
//    for(int j = 0; j < skillSet[i].Length; j++)
//    {
//        Console.WriteLine(skillSet[i][j]);
//    }
//}

//foreach(var skills in skillSet)
//{
//    foreach (var skill in skills)
//    {
//        Console.WriteLine(skill);
//    }
//}


// FUNTIONS

//return type funcName() {body}


//No return no parameter

//void Greet()
//{
//    Console.WriteLine("Good Evening!");
//}

////calling

//Greet();
//Greet();
//Greet();

//No return with parameter        NO RETURN==void

//void Greet(string name)
//{
//    Console.WriteLine($"Hi {name}, Good Evening!");
//}

////calling

//Greet("Zunno");
//Greet("Burney");
//Greet("Saima");

//return with no parameter

//string Greet()
//{
//    return "Hey, Welcome to our company!";
//}

//int Add()
//{
//    return 32 + 45;
//}


//Console.WriteLine(Greet());
//Console.WriteLine(Add());


////return with parameter

//string empDetails(string name, byte age)
//{
//    return ($"Emp Name: {name}. \nEmp Age: {age}");
//}

//Console.WriteLine(empDetails("Burney", 56));


//DATA STRUCTURES
//COLLECTIONS

//Generic Collection == datatype zaroor batani he
//LIST, STACK, QUEUE, Dictionary


//LIST
//Add
//Remove
//Contains
//AddRange
//RemoveRange



//List<string> SuperCars = new List<string>();

//SuperCars.Add("Bugatti");
//SuperCars.Add("Supra");
//SuperCars.Add("Mazda Rx7");
//SuperCars.Add("Ferrari");


//List<string> Cars = new List<string>();

//Cars.Add("Haval"); //0
//Cars.Add("BMW"); //1
//Cars.Add("City"); //2
//Cars.Add("Alto"); //3
//Cars.Add("Cultus"); //4


////Console.WriteLine(Cars.Count);
////Console.WriteLine(Cars[0]);
////Console.WriteLine(Cars[4]);
////Console.WriteLine(Cars.Contains("BMW")); //T/F

////Cars.RemoveAt(1);
//Cars.Insert(3, "Carolla");

//Cars.AddRange(SuperCars);
//Cars.RemoveRange(1, 5); //4


////Console.WriteLine(Cars[4]);

//foreach (var car in Cars)
//{
//    Console.WriteLine(car);
//}

////foreach (var spcar in SuperCars)
////{
////    Console.WriteLine(spcar);
////}

//QUEUE (FIFO: First In First Out)
//Enqueue == Add
//Dequeue == Remove


//Queue<string> stdName = new Queue<string>();

//stdName.Enqueue("Burney");
//stdName.Enqueue("Zunno");
//stdName.Enqueue("Huzaifa");
//stdName.Enqueue("FAtima");
//stdName.Enqueue("Arham");


////Remove == Dequeue
//stdName.Dequeue(); //Burney
//stdName.Dequeue(); //Zunno



//foreach (var std in stdName)
//{
//    Console.WriteLine(std);
//}

//STACK (LIFO: Last In First Out)
//Push = Add
//Pop = Remove



//Stack<string> Birds = new Stack<string>();

//Birds.Push("Electus");
//Birds.Push("Amazon");
//Birds.Push("Finch");
//Birds.Push("Maccow");
//Birds.Push("Australian");
//Birds.Push("Love Bird Burney");


//Birds.Pop(); //Love Bird Burney
//Birds.Pop(); //Australian

//foreach (var bird in Birds)
//{
//    Console.WriteLine(bird);
//}

//Dictionary(Generic Collection) (key: value)
//add, remove

//Dictionary<string, string> employeeDetails = new Dictionary<string, string>();

//employeeDetails.Add("empName", "Ashar");
//employeeDetails.Add("empDesig", "React Developer");
//employeeDetails.Add("empAddress", "North Khi");
//employeeDetails.Add("empImg", "ashar.jpg");
//employeeDetails.Add("empEmail", "ashar@gmail.com");
//employeeDetails.Add("empPass", "KuyTasdbv1");
////employeeDetails.Add("empSalary", 698745);
////employeeDetails.Add("empIsValid", true);

//Dictionary<string, int> stdMarks = new Dictionary<string, int>();

//stdMarks.Add("Urdu", 70);
//stdMarks.Add("Maths", 90);
//stdMarks.Add("Physics", 87);


//Console.WriteLine(employeeDetails["empName"]);

//For Each Loop
//foreach(var item in employeeDetails)
//{
//    string[] test = (item.ToString()).Split(',');
//    //string key = test[0];
//    //string value = test[1];
//    string key = test[0].Trim('['); //[
//    string value = test[1].Trim(']'); //]
//    //Console.WriteLine(key);
//    //Console.WriteLine(value);
//    //Console.WriteLine(item);

//    Console.WriteLine($"The employee has key propety:{key} and value property is:{value}");
//    //Console.WriteLine(test[0]);
//}


//HashTables

//Hashtable students = new Hashtable();
//students.Add("stdname", "Abdullah");
//students.Add("stdMarks", 98);
//students.Add("stdExamStatus", true);
//students.Add("stdImg", "abdullah.jpg");


////Console.WriteLine(students["stdname"]);
////students.Contains("stdMarks");
////students.ContainsValue(98);

//foreach(DictionaryEntry item in students)
//{
//    Console.WriteLine(item.Key + " : " + item.Value);
//}

//Console.WriteLine(students.GetHashCode());

//ArrayList (None-Generic Collection & No fix datatype)

//ArrayList Cars = new ArrayList();
//Cars.Add("Revo");
//Cars.Add("Camery");
//Cars.Add("Civic");
//Cars.Add("Elantra");
//Cars.Add("Mehran");                                                                   
//Cars.Add(24007);
//Cars.Add(.70f);

////Console.WriteLine(Cars.Count);
//Console.WriteLine(Cars.Contains("Mehran"));
////Cars.RemoveAt(3);
////Cars.Remove("Revo");
//Cars.RemoveRange(5, 2);



//foreach(var car in Cars)
//{
//    Console.WriteLine(car);
//}

//String Methods

//string test = """{ "name": "John Doe"}""";
//string test = "John Doe";

//using System.Collections;

//string test = "we are  Learnnig \"C#\"";
////Console.WriteLine(test);
////Console.WriteLine(test.Replace("Learnnig", "Mastering"));
//Console.WriteLine(test.Replace("C#", "Java"));

string email = "hdkjhdkjhkhf";
int stdage = 75;

//login start

//login end


//CODING Best Practices
// Indentation (Readable by using spaces and new lines) 
// Comments 
// Meaningful identifiers (variable names)
// errors (exception handling) 
//less repeatation

//OOP
//Objects and Classes
//OOP (OBJECT ORIENTED PROGRAMMING)
//it is an approach to code cleaner and better.
//readable
//reusable
//optimize
//proper structure of the code is maintained.

//Main Pillars of OOP

//1. Interitance
// i . Single level inheritance  Vehicle -> Car
// ii . Multi level inheritance  Vehicle -> Car -> Ecar
// iii. Heirarchical inheritance Vehicle ->Car , Vehicle-> Bike
// iv. Multiple inheritance  
// v. Hybrid inheritance    Vehicle -> CAR , Vehicle -> Car -> Ecar, Car-> Ecar

//2. Polymorphism(Poly: Many, morphism: forms)
// Method Overloading
// Method Overriding
//3. Abstraction
//4. Encapsulation


//Aeroplane Boeing707 = new Aeroplane();//default constructor


//Boeing707.Name = "Boeing 707";
//Boeing707.takeOff();
//Console.WriteLine(Boeing707.AirLine);

//Aeroplane f16 = new Aeroplane("PAF");
//f16.takeOff();

//Aeroplane f17 = new Aeroplane("PAF", "F-17 Thunder", 2, 2, "8500hp");
//f17.takeOff();
//f17.land();

//class ClassNamae{
//default constructor
//parametrized constructor
//methods
//}






public class Aeroplane
{
    public string? AirLine;
    public string? Name;
    public int Seats;
    public int Crew;
    public string? Power;

    //Contstructor
    public Aeroplane()
    {
        this.AirLine = "Not specified";
        this.Name = "unknown";
        this.Seats = 0;
        this.Crew = 0;
        this.Power = null;
    }

    public Aeroplane(string AirLine)
    {
        this.AirLine = AirLine;
        this.Name = "unknown";
        this.Seats = 0;
        this.Crew = 0;
        this.Power = null;
    }


    //    //Paremeterized constructor (Overloading)
    public Aeroplane(string ALine, string name, int seat, int crew, string pow)
    {
        this.AirLine = ALine;
        this.Name = name;
        this.Seats = seat;
        this.Crew = crew;
        this.Power = pow;
    }
    public void takeOff()
    {
        Console.WriteLine($"{this.Name} is taking off. Best Wishes..!");
    }
    public void land()
    {
        Console.WriteLine($"{this.Name} is Landing at the 4th runway..! ");
    }

}
















