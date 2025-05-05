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

let tuple: [number, string, boolean] = [1, "Owais", true];

var scndElemnt = tuple[1];
console.log(scndElemnt);

// In JS
// let tuple = [ 1, "Owais", true];
let failingResponse = [404, "Not Found"];
// In TS
let passingResponse: [string, number] = ['{"name": "Owais", "age": 23 }', 200];

if(passingResponse[1] === 200){
    let info = JSON.parse(passingResponse[0]);
    console.log(info);
}

type staffAccount = [number, string, string, string?];

const staff: staffAccount[] = [
    [1, "Hassan Shehzad", "hassan@aptechnorth.edu.pk", "CAH"],
    [2, "Sajida", "sajida@aptechnorth.edu.pk" ],
    [3, "Owais Ahmed", "owais@aptechnorth.edu.pk", "Manager Academics" ],
    [4, "Haris Naseer", "haris@aptechnorth.edu.pk", "Manager Academics"]
];





























