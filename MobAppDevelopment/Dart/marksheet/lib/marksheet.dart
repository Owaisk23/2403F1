import 'dart:io';
void main(){
  print("Hello, Marksheet!");
  List<String> courseName = [];
  List<double> courseMarks = [];
  List<dynamic> studentInfo = [];
  int subjectCount;
  double totalScore = 0;
  double totalMarks = 0;
  double percentage = 0;
  String Grade;

  print("Please enter your enrollment number: ");
  studentInfo.add(stdin.readLineSync() ?? 'Not provided');

  print("Please enter your Full Name: ");
  studentInfo.add(stdin.readLineSync() ?? 'Not provided');

  print("Please enter your Age: ");
  studentInfo.add(stdin.readLineSync() ?? 'Not provided');

  print("How many subject do you have?");
  subjectCount = int.parse(stdin.readLineSync() ?? '0');

  totalMarks = subjectCount * 100;

  for (int i = 0; i < subjectCount; i++) {
    print("Enter the name of subject ${i + 1}: ");
    courseName.add(stdin.readLineSync() ?? 'Not provided');

    print("Enter the marks obtained in ${courseName[i]}: ");
    courseMarks.add(double.parse(stdin.readLineSync() ?? '0'));
    
    totalScore += courseMarks[i];
  }
  percentage = (totalScore / totalMarks) * 100;

  if(percentage >= 80 && percentage <= 100){
    Grade = "A+";
  } else if(percentage >= 70 && percentage < 80){
    Grade = "A";
  } else if(percentage >= 60 && percentage < 70){
    Grade = "B";
  } else if(percentage >= 50 && percentage < 60){
    Grade = "C";
  } else if(percentage >= 40 && percentage < 50){
    Grade = "D";
  } else {
    Grade = "F";
  }

  print("\n----- Marksheet -----");
  print("Enrollment Number: ${studentInfo[0]}");
  print("Full Name: ${studentInfo[1]}");
  print("Age: ${studentInfo[2]}");
  print("\nSubjects and Marks:");
  for (int i = 0; i < subjectCount; i++) {
    print("${courseName[i]}: ${courseMarks[i]}");

  }
  print("\nTotal Marks: $totalMarks");
  print("Total Score: $totalScore");
  print("Percentage: ${percentage.toStringAsFixed(2)}%");
  print("Grade: $Grade");
  
}