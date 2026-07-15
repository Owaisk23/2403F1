import express from "express";
import productController from "../controller/productController.mjs";
import { upload } from "../cloudinaryConfig.mjs";

const productRouter = express.Router();

productRouter
  .get("/", productController.index)
  .get("/:id", productController.singleProduct)
  .post('/', upload.array('images'),productController.addProductWithImage);
  // .post('/', upload.single('images'),productController.addProductWithImage);
  // .post("/", productController.addProduct)
  // .post("/", productController.create)
  // .delete("/:id", productController.deleteProduct);

export default productRouter;