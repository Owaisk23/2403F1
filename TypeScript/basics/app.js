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
var userDetails = {
    name: "Owais Ahmed",
    age: 23,
    isValid: true
};
console.log(userDetails);
console.log(userDetails.name);
var carDetails = {
    name: "BMW",
    model: "X5",
    year: 2023,
    isValid: true
};
console.log(carDetails);
var student = {
    name: "Owais Ahmed",
    stdMarks: 90,
    isActive: true
};
console.log(student);
var mixed;
mixed = ["Owais", 23, "Ahmed", 90, "Pakistan", 100];
mixed.forEach(function (val) {
    if (typeof val === "string") {
        console.log("String Upper Case: ".concat(val.toUpperCase()));
    }
    else {
        console.log("Number: ".concat(val.toFixed(2)));
    }
});
var stdDetail = {
    name: "Saima Khalid",
    age: 17,
    isActive: false
};
console.log(stdDetail.name);
