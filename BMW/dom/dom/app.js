//  document.getElementById("head").innerText = "JS DOM HEADING";
//  document.getElementById("para").innerText = "Hello from JS DOM";


// document.getElementById("para").innerText = "<h1>Hello from JS</h1>";
// document.getElementById("para").innerHTML = "<h1>Hello from JS</h1>";

// var att = document.getElementById("para").attributes;
// console.log(att);


// document.getElementById("para").setAttribute("class","paragraph");

// document.getElementById("para").removeAttribute("class");

// var element = document.getElementsByTagName('p')
// console.log(element)



// document.getElementById("demo").innerHTML = "hello world ";

// var para = document.getElementsByClassName("p1");
// console.log(para[3])


// function insertTag(){
//     var para = document.createElement("p");
//     para.innerText = "Hello from JS";

//     var section1 = document.getElementById("section");
//     section1.appendChild(para);
//     console.log(section1);
// }





function changeImage(){
    var img = document.getElementById('image');
    img.style.width = "500px";
    img.src = "https://img.freepik.com/free-vector/modern-blue-urban-adventure-suv-vehicle-illustration_1344-205.jpg?w=2000";
    console.log(img)
 }
 
 
 function changeImage2(){
    var img = document.getElementById('image');
    img.src = "https://i.gaw.to/content/photos/56/76/567681-lamborghini-revuelto-une-nouvelle-bombe-hybride-de-1001-chevaux.jpeg";
    console.log(img)
 }