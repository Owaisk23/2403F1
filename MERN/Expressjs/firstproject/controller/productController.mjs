import fs from 'node:fs';
// import path from 'path';
import Product from '../model/productModel.mjs';

// const dirname = path.resolve();
// const dataPath = 'data.json';
// const data = JSON.parse(fs.readFileSync(dataPath, 'utf-8'));


// let products = data;

// Fetching data from database
let index = async (req, res) => {
  try {
    const products = await Product.find();
    if (products.length > 0) {
      res.status(200).json({ message: "Products found", products: products });
    } else {
      res.status(404).json({ message: "No products found" });
    }
  } catch (error) {
    console.log(error);
    res.status(500).json({ message: error.message })
  }
}

let create = async (req, res) => {
  
      console.log(req.headers);
      console.log(req.body);

  try {
    const {
      title,
      description,
      price,
      discountedPercentage,
      rating,
      stock,
      brand,
      category,
      thumbnail,
      images
    } = req.body;

    const product = new Product({
      title,
      description,
      price,
      discountedPercentage,
      rating,
      stock,
      brand,
      category,
      thumbnail,
      images
    });

    // // mongoose method to save data to database
    // const addProd = await product.save();
    // mongodb method to save data to database
    let addProd = await Product.insertOne(product);

    res.status(201).json({
      message: "Product created successfully",
      product: addProd
    });

  } catch (error) {
    console.log(error);

    if (error.name === "ValidationError") {
      return res.status(400).json({ message: error.message });
    }

    res.status(500).json({ message: error.message });
  }
};

let addProductWithImage = async (req, res) => {
  try {
    console.log(req.file)
    console.log(req.file.path);
    let newProduct = new Product({
      title: req.body.title,
      description: req.body.description,
      price: req.body.price,
      discountedPercentage: req.body.discountPercentage,
      rating: req.body.rating,
      stock: req.body.stock,
      brand: req.body.brand,
      category: req.body.category,
      thumbnail: req.file.path,
      images: req.file.path

    });

    let addprod = await Product.insertOne(newProduct);
    if (!addprod) {
      res.status(404).json({ message: "Failed to add product" });
    } else {

      res.status(200).json({
        message: "Product added successfully",
        product: addprod,
      })
    }
  } catch (error) {
    console.log(error);
    res.status(500).json({ message: "Internal server errror" });
  }
}



let singleProduct = (req, res) => {
  try {
    const id = req.params.id;

    const product = data.find((item) => item.id == id);

    if (!product) {
      return res.status(404).json({
        message: "Product not found"
      });
    }

    res.status(200).json({
      message: "Product fetched successfully",
      products: product
    });

  } catch (error) {
    res.status(500).json({
      message: error.message
    });
  }
}

// let addProduct =  (req, res) => {
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
// }
// let deleteProduct = (req, res) => {
//   try {
//     const id = Number(req.params.id);

//     let data = JSON.parse(fs.readFileSync(dataPath, "utf8"));

//     const deletedProduct = data.products.find(
//       product => product.id === id
//     );

//     if (!deletedProduct) {
//       return res.status(404).json({
//         message: "Product not found"
//       });
//     }

//     data.products = data.products.filter(
//       product => product.id !== id
//     );

//     fs.writeFileSync(
//       dataPath,
//       JSON.stringify(data, null, 2),
//       "utf8"
//     );

//     res.status(200).json({
//       message: "Product deleted successfully",
//       product: deletedProduct
//     });

//   } catch (error) {
//     res.status(500).json({
//       message: "Error deleting product",
//       error: error.message
//     });
//   }
// };

const productController = {
  index,
  singleProduct,
  create,
  addProductWithImage,
  // addProduct,
  // deleteProduct
};

export default productController;