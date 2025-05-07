console.log("Welcome in Typescript");
// let userName: string = "Owais Ahmed";
// let userAge: number = 23;
// let userEmail: string = "owais@gmail.com"
// let isActive: boolean = true;
// console.log(`Hello ${userName}`);
// let userDetails = `User Name: ${userName}, User Age: ${userAge}, User Email: ${userEmail}, Is Active: ${isActive}`;
// console.log(userDetails);
// // null==false  true=1 false=0
// let userId = null;
// if(userId){
//     console.log("User ID is true");
// }else{
//     console.log("User ID is false");
// }
// // undefined==false  true=1 false=0
// let userPost = undefined;
// if(userPost){
//     console.log("userPost is true");
// }else{
//     console.log("userPost is false");
// }
// // Array
// let userMarks: number[] = [45, 60, 80, 90];
// // userMarks.push(100); //end 100
// // userMarks.pop(); //end delete last element
// // userMarks.shift(); //start delete
// console.log(userMarks);
// // forEach loop
// userMarks.forEach((val)=>{
//     console.log(val);
// });
// let userNames: string[] = ["Ashar", "Zunno", "Saima", "Moosa", "Arham"];
// let upperCaseNames = userNames.map((val)=>{
//     console.log(val);
//     return val.toUpperCase();
// })
// upperCaseNames.forEach((val)=>{
//     console.log(`UpperCase Name: ${val}`);
// }) 
// let userDetails: any = {
//     name: "Owais Ahmed",
//     age: 23,
//     isValid: true
// }
// console.log(userDetails);
// console.log(userDetails.name);
// let carDetails: object = {
//     name: "BMW",
//     model: "X5",
//     year: 2023,
//     isValid: true
// }
// console.log(carDetails);
// let student: {
//     name: string,
//     stdMarks: number,
//     isActive: boolean,
// } = {
//     name: "Owais Ahmed",
//     stdMarks: 90,
//     isActive: true
// }
// console.log(student);
// let mixed: (string | number) [];
// mixed = ["Owais", 23, "Ahmed", 90, "Pakistan", 100];
// mixed.forEach((val)=>{
//     if(typeof val === "string"){
//         console.log(`String Upper Case: ${val.toUpperCase()}`)
//     }else{
//         console.log(`Number: ${val.toFixed(2)}`)    
//     }
// })
// //Aliased Object Type
// type Std = {
//     name: string,
//     age: number,
//     isActive: boolean
// }
// let stdDetail: Std = {
//     name: "Saima Khalid",
//     age: 17,
//     isActive: false
// }
// console.log(stdDetail.name);
// console.log(stdDetail["age"]);
// // INTERFACE
// interface Manager {
//     name: string,
//     salary?: number,
// }
// let manager: Manager = {
//     name: "Owais Ahmed",
//     salary: 100000
// }
// console.log(manager.name);
// console.log(manager.salary);
//Intersected types
// interface Students {
//     stdId: number,
//     stdName: string,
// }
// interface Teachers {
//     tId: number,
//     tName: string,
// }
// type intersected_Types = Students & Teachers;
// let stdDetails: intersected_Types = {
//     stdId: 1432765,
//     stdName: "Saima Khalid",
//     tId: 76,
//     tName: "Sir Owais Ahmed"
// }
// console.log(stdDetails);
// console.log(stdDetails["tName"]);
// Tuple Type have advantage that you can accurately define the type of each element in the array.
var tuple = [1, "Owais", true];
var scndElemnt = tuple[1];
console.log(scndElemnt);
// In JS
// let tuple = [ 1, "Owais", true];
var failingResponse = [404, "Not Found"];
// In TS
var passingResponse = ['{"name": "Owais", "age": 23 }', 200];
if (passingResponse[1] === 200) {
    var info = JSON.parse(passingResponse[0]);
    console.log(info);
}
var staff = [
    [1, "Hassan Shehzad", "hassan@aptechnorth.edu.pk", "CAH"], //0
    [2, "Sajida", "sajida@aptechnorth.edu.pk"], //1
    [3, "Owais Ahmed", "owais@aptechnorth.edu.pk", "Manager Academics"], //2
    [4, "Haris Naseer", "haris@aptechnorth.edu.pk", "Manager Academics"] //3
];
var payStubsList = [
    [staff[0], 10000, 3200, 3000],
    //   //[0][0], [0][1]    
    [staff[1], 25000, 1800],
    [staff[2], 45000, 2300, 3000, 4000],
    [staff[3], 5000, 7800, 3000, 4000, 5000]
];
var monthOnePayStubs = payStubsList[0][1] + payStubsList[1][1] + payStubsList[2][1] + payStubsList[3][1];
console.log(monthOnePayStubs); //85000
//enum 
var Color;
(function (Color) {
    Color[Color["Red"] = 0] = "Red";
    Color[Color["Green"] = 1] = "Green";
    Color[Color["Blue"] = 2] = "Blue";
})(Color || (Color = {}));
var c = Color.Red;
console.log(c); //1
var Color1;
(function (Color1) {
    Color1[Color1["Red"] = 1] = "Red";
    Color1[Color1["Green"] = 2] = "Green";
    Color1[Color1["Blue"] = 3] = "Blue";
})(Color1 || (Color1 = {}));
//          0      1      2
//          1      2      3
var colorName = Color1[3];
console.log(colorName); //Blue
var Color2;
(function (Color2) {
    Color2[Color2["Red"] = 4] = "Red";
    Color2[Color2["Green"] = 7] = "Green";
    Color2[Color2["Blue"] = 2] = "Blue";
    Color2[Color2["Orange"] = 5] = "Orange";
})(Color2 || (Color2 = {}));
var colorName = Color2[7];
console.log(colorName); //Green
