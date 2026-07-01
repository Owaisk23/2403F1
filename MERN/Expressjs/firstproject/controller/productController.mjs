import fs from 'node:fs';
import path from 'path';

const dirname = path.resolve();
const dataPath = 'data.json';
const data = JSON.parse(fs.readFileSync(dataPath, 'utf-8'));


let products = data;

let index = (req, res) => {
  try {
    res.status(200).json({ message: "Products fetched successfully", products: data });
  }
  catch (error) {
    console.error("Error fetching products: ", error);
    res.status(500).json({ message: "Error fetching products", error: error.message });
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

let addProduct =  (req, res) => {
  try {
    const newProduct = req.body;

    // basic validation (optional but recommended)
    if (!newProduct.title || !newProduct.price) {
      return res.status(400).json({ message: "name and price are required" });
    }

    // add new product
    products.push(newProduct);

    // save back to file
    fs.writeFileSync(
      dataPath,
      JSON.stringify({ products }, null, 2),
      'utf-8'
    );

    res.status(201).json({
      message: "Product added successfully",
      product: newProduct
    });

  } catch (error) {
    console.error("error adding product:", error);
    res.status(500).json({
      message: "error adding product",
      error: error.message
    });
  }
}
let deleteProduct = (req, res) => {
  try {
    const id = Number(req.params.id);

    let data = JSON.parse(fs.readFileSync(dataPath, "utf8"));

    const deletedProduct = data.products.find(
      product => product.id === id
    );

    if (!deletedProduct) {
      return res.status(404).json({
        message: "Product not found"
      });
    }

    data.products = data.products.filter(
      product => product.id !== id
    );

    fs.writeFileSync(
      dataPath,
      JSON.stringify(data, null, 2),
      "utf8"
    );

    res.status(200).json({
      message: "Product deleted successfully",
      product: deletedProduct
    });

  } catch (error) {
    res.status(500).json({
      message: "Error deleting product",
      error: error.message
    });
  }
};

const productController = {
  index,
  singleProduct,
  addProduct,
  deleteProduct
};

export default productController;