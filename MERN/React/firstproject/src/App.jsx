import { useState } from "react";
import reactLogo from "./assets/react.svg";
import viteLogo from "./assets/vite.svg";
import heroImg from "./assets/hero.png";
import "./App.css";
import MyName from "./components/MyName";
import Navbar from "./components/Navbar";
import Footer from "./components/Footer";
import Card from "./components/Card";

function App() {
  let userData = [
    {
      name: "Owais Ahmed Khan",
      profession: "Software Engineer",
    },
    {
      name: "Ashar Ahmed",
      profession: "Frontend Engineer",
    },
    {
      name: "Haris Naseer",
      profession: "Backend Engineer",
    },
    {
      name: "Usama Raiz",
      profession: "DevOps Engineer",
    },
    {
      name: "Afzal Siddiqui",
      profession: "AI Engineer",
    },
  ];

  let cardData = [
    {
      title: "Samsung Galaxy S24 Ultra",
      desc: "Flagship Android phone with S-Pen support and AI-powered features.",
      img: "https://images.unsplash.com/photo-1610945265064-0e34e5519bbf",
    },
    {
      title: "Sony WH-1000XM5",
      desc: "Industry-leading noise cancelling wireless headphones.",
      img: "https://images.unsplash.com/photo-1546435770-a3e426bf472b",
    },
    {
      title: "Apple Watch Series 9",
      desc: "Smartwatch with fitness tracking, ECG monitoring, and seamless iPhone integration.",
      img: "https://images.unsplash.com/photo-1510017803434-a899398421b3",
    },
    {
      title: "Dell XPS 15",
      desc: "High-performance ultrabook with InfinityEdge display and premium build quality.",
      img: "https://images.unsplash.com/photo-1496181133206-80ce9b88a853",
    },
    {
      title: "Logitech MX Master 3S",
      desc: "Ergonomic wireless mouse designed for productivity and creators.",
      img: "https://images.unsplash.com/photo-1527814050087-3793815479db",
    },
    {
      title: "iPad Pro",
      desc: "Versatile tablet powered by Apple Silicon, ideal for creativity and multitasking.",
      img: "https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0",
    },
    {
      title: "ASUS ROG Strix G16",
      desc: "Gaming laptop with high refresh-rate display and RTX graphics.",
      img: "https://images.unsplash.com/photo-1603302576837-37561b2e2302",
    },
    {
      title: "GoPro HERO12",
      desc: "Action camera capable of capturing ultra-smooth 5.3K videos.",
      img: "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f",
    },
  ];

  return (
    <>
      <Navbar />
      <h1 className="heading bg-primary">Hello in ReactJS</h1>

      {/* <h2>Name: {userData[0].name} Profession: {userData[0].profession}</h2>
      <h2>Name: {userData[1].name} Profession: {userData[1].profession}</h2>
      <h2>Name: {userData[2].name} Profession: {userData[2].profession}</h2>
      <h2>Name: {userData[3].name} Profession: {userData[3].profession}</h2>
      <h2>Name: {userData[4].name} Profession: {userData[4].profession}</h2> */}

      {/* <div>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos nesciunt excepturi ea velit fuga consequuntur, reiciendis at iure corrupti et veniam dolores quos quo nisi!</p>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos nesciunt excepturi ea velit fuga consequuntur, reiciendis at iure corrupti et veniam dolores quos quo nisi!</p>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos nesciunt excepturi ea velit fuga consequuntur, reiciendis at iure corrupti et veniam dolores quos quo nisi!</p>
      </div> */}
      {/* <MyName name={"Owais Ahmed"} profession={"Software Engineer"} /> */}

      {userData.map((user, index) => {
        return (
          <MyName key={index} name={user.name} profession={user.profession} />
        );
      })}


      {cardData.map((card, index) => {
        return (
          <Card key={index} title={card.title} desc={card.desc} img={card.img} />
        );
      })}
      <Footer />
    </>
  );
}

export default App;
