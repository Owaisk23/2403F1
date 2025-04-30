console.log("Welcome in Typescript");
var userName = "Owais Ahmed";
var userAge = 23;
var userEmail = "owais@gmail.com";
var isActive = true;
console.log("Hello ".concat(userName));
var userDetails = "User Name: ".concat(userName, ", User Age: ").concat(userAge, ", User Email: ").concat(userEmail, ", Is Active: ").concat(isActive);
console.log(userDetails);
// null==false  true=1 false=0
var userId = null;
if (userId) {
    console.log("User ID is true");
}
else {
    console.log("User ID is false");
}
// undefined==false  true=1 false=0
var userPost = undefined;
if (userPost) {
    console.log("userPost is true");
}
else {
    console.log("userPost is false");
}
// Array
var userMarks = [45, 60, 80, 90];
userMarks.push(100); //end 100
userMarks.pop(); //end delete last element
userMarks.shift(); //start delete
console.log(userMarks);
