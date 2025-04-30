console.log("Welcome in Typescript");



let userName: string = "Owais Ahmed";
let userAge: number = 23;
let userEmail: string = "owais@gmail.com"
let isActive: boolean = true;

console.log(`Hello ${userName}`);


let userDetails = `User Name: ${userName}, User Age: ${userAge}, User Email: ${userEmail}, Is Active: ${isActive}`;
console.log(userDetails);

// null==false  true=1 false=0

let userId = null;

if(userId){
    console.log("User ID is true");
}else{
    console.log("User ID is false");
}

// undefined==false  true=1 false=0

let userPost = undefined;

if(userPost){
    console.log("userPost is true");
}else{
    console.log("userPost is false");
}

// Array

let userMarks: number[] = [45, 60, 80, 90];
userMarks.push(100); //end 100
userMarks.pop(); //end delete last element
userMarks.shift(); //start delete
console.log(userMarks);



