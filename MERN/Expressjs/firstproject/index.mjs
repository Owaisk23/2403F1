// const express = require('express');
import express from 'express';
import path from 'path';
import fs from 'node:fs';
import productRouter from './routes/productRoutes.mjs';
// const mongoose = require('mongoose');
import mongoose from 'mongoose';
const app = express();

const port = 3000;
app.use(express.json());


const dirname = path.resolve();

const dataPath = './data.json';
const data = JSON.parse(fs.readFileSync(dataPath, 'utf-8'));


let products = data.products;

app.use('/products', productRouter);


// getting-started.js

main().catch(err => console.log(err));

async function main() {
  await mongoose.connect('mongodb+srv://owaisahmedkhan:owais123@cluster0.mbgw7ps.mongodb.net/Mart');
  console.log("MongoDB Connected!")
  // use `await mongoose.connect('mongodb://user:password@127.0.0.1:27017/test');` if your database has auth enabled
}
// app.get('/', (req, res) => {
//   res.send('Hello World!');
// });

// app.get('/about', (req, res) => {
//   res.send('Hello in About Page!');
// });

// app.get('/image', (req, res) => {
//   res.sendFile(dirname + '/static/bachra.jpg');
// });

// app.use('/home', express.static(dirname, { index: '/static/index.html' }));


// // Router Parameters (The are compulsory)
// app.get('/product/:id', (req, res) => {
//   res.json({ name: 'Product No: ' + req.params.id });
// })

// app.get('/posts/:id', (req, res) => {
//   let postId = req.params.id;
//   let postObj = [
//     {
//       postId: 1,
//       title: 'Palestine Ceases Fire',
//       content: 'After 1100 days of conflict, a ceasefire was announced between',
//     },
//     {
//       postId: 2,
//       title: 'Ukraine War',
//       content: 'The war in Ukraine has caused unprecedented destruction and',
//     },
//     {
//       postId: 3,
//       title: 'Global Economic Outlook',
//       content: 'The global economy is facing significant challenges due to',
//     }
//   ];

//   postObj.map((post) => {
//     if (post.postId == postId) {
//       console.log(post);
//       postObj = post;
//     }
//   })
//   res.json(postObj);
// })



// // Query Parameters (They are option)
// app.get('/categories', (req, res) => {
//   if (req.query.name) {
//     res.json({ name: "Category: " + req.query.name })
//   }
//   else {
//     res.json({ name: "All Categories" })
//   }
// })

// // Request Body (They are used to send data to server)
// app.get('/contact', (req, res) => {
//   const name = req.body.name;
//   const age = req.body.age;
//   const city = req.body.city;

//   res.json({ name: name, age: age, city: city })
// })


// TAMAAM PRODUCTS FETCH KRKE LE AAO
// app.get('/products', (req, res) => {
//   try {
//     res.status(200).json({ message: "Products fetched successfully", products: products });
//   }
//   catch (error) {
//     console.error("Error fetching products: ", error);
//     res.status(500).json({ message: "Error fetching products", error: error.message });
//   }

// }
// )

// // FETCH KRO BY ID
// app.get("/products/:id", (req, res) => {
//   try {
//     const id = req.params.id;

//     const product = data.find((item) => item.id == id);

//     if (!product) {
//       return res.status(404).json({
//         message: "Product not found"
//       });
//     }

//     res.status(200).json({
//       message: "Product fetched successfully",
//       products: product
//     });

//   } catch (error) {
//     res.status(500).json({
//       message: error.message
//     });
//   }
// });

// // ADD PRODUCT FILE K ANDR
// app.post('/addproduct', (req, res) => {
//   try {
//     const newProduct = req.body;

//     // basic validation (optional but recommended)
//     if (!newProduct.title || !newProduct.price) {
//       return res.status(400).json({ message: "name and price are required" });
//     }

//     // add new product
//     products.push(newProduct);

//     // save back to file
//     fs.writeFileSync(
//       dataPath,
//       JSON.stringify({ products }, null, 2),
//       'utf-8'
//     );

//     res.status(201).json({
//       message: "Product added successfully",
//       product: newProduct
//     });

//   } catch (error) {
//     console.error("error adding product:", error);
//     res.status(500).json({
//       message: "error adding product",
//       error: error.message
//     });
//   }
// });


// // //Delete KRDO product
// app.delete("/deleteproduct/:id", (req, res) => {
//   try {
//     const id = req.params.id;

//     const deletedProduct = products.find((item) => item.id == id);

//     if (!deletedProduct) {
//       return res.status(404).json({
//         message: "Product not found",
//       });
//     }

//     products = products.filter((item) => item.id != id);

//     // Save updated array to file
//     fs.writeFileSync(
//       "./data.json",
//       JSON.stringify(products, null, 2)
//     );

//     res.status(200).json({
//       message: "Product deleted successfully",
//       product: deletedProduct,
//     });

//   } catch (error) {
//     console.log(error);
//     res.status(500).json({
//       message: error.message,
//     });
//   }
// });

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});