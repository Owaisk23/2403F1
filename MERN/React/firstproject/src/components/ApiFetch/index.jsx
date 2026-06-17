import React, { useState, useEffect } from "react";

const Index = () => {
  const [count, setCount] = useState(0);
  const [products, setProducts] = useState([]);

  const getProducts = async () => {
    try {
      const response = await fetch("https://fakestoreapi.com/products");
      const data = await response.json();
      setProducts(data);
    } catch (error) {
      console.log(error);
    }
  };

  useEffect(() => {
    getProducts();
  }, []);

  // Delete Product
  const handleDelete = (id) => {
    setProducts(products.filter((product) => product.id !== id));
  };

  // Edit Product
  const handleEdit = (id) => {
    const newTitle = prompt("Enter new product title:");
    if (!newTitle) return;

    setProducts(
      products.map((product) =>
        product.id === id ? { ...product, title: newTitle } : product
      )
    );
  };

  return (
    <div style={{ padding: "20px", fontFamily: "Arial" }}>
      <h1>Counter: {count}</h1>

      <button
        onClick={() => setCount(count + 1)}
        style={{
          padding: "10px 20px",
          fontSize: "16px",
          cursor: "pointer",
          marginBottom: "20px",
        }}
      >
        Increment
      </button>

      <div
        style={{
          display: "grid",
          gridTemplateColumns: "repeat(auto-fit,minmax(250px,1fr))",
          gap: "20px",
        }}
      >
        {products.map((product) => (
          <div
            key={product.id}
            style={{
              position: "relative",
              borderRadius: "20px",
              overflow: "hidden",
              padding: "20px",
              background: "linear-gradient(145deg, #1e1e2f, #2a2a40)",
              color: "#fff",
              boxShadow: "0 10px 25px rgba(0,0,0,0.4)",
              transition: "0.3s",
              textAlign: "center",
            }}
          >
            {/* Price Tag */}
            <div
              style={{
                position: "absolute",
                top: "15px",
                right: "15px",
                background: "#ff6b35",
                padding: "6px 12px",
                borderRadius: "8px",
                fontSize: "14px",
                fontWeight: "bold",
              }}
            >
              ${product.price}
            </div>

            {/* Product Image */}
            <div
              style={{
                height: "220px",
                display: "flex",
                justifyContent: "center",
                alignItems: "center",
                marginBottom: "15px",
              }}
            >
              <img
                src={product.image}
                alt={product.title}
                style={{
                  maxWidth: "150px",
                  maxHeight: "180px",
                  objectFit: "contain",
                }}
              />
            </div>

            {/* Product Info */}
            <h3
              style={{
                fontSize: "18px",
                fontWeight: "bold",
                marginBottom: "10px",
                height: "50px",
                overflow: "hidden",
              }}
            >
              {product.title}
            </h3>

            <p
              style={{
                fontSize: "14px",
                color: "#d1d1d1",
                height: "60px",
                overflow: "hidden",
                marginBottom: "15px",
              }}
            >
              {product.description}
            </p>

            {/* Rating */}
            <div style={{ marginBottom: "15px", color: "#FFD700" }}>
              {"★".repeat(Math.round(product.rating?.rate || 4))}
            </div>

            {/* Buttons */}
            <div
              style={{
                display: "flex",
                justifyContent: "center",
                gap: "10px",
              }}
            >
              <button
                onClick={() => handleEdit(product.id)}
                style={{
                  background: "#3b82f6",
                  color: "#fff",
                  border: "none",
                  padding: "10px 16px",
                  borderRadius: "8px",
                  cursor: "pointer",
                  fontWeight: "600",
                }}
              >
                Edit
              </button>

              <button
                onClick={() => handleDelete(product.id)}
                style={{
                  background: "#ef4444",
                  color: "#fff",
                  border: "none",
                  padding: "10px 16px",
                  borderRadius: "8px",
                  cursor: "pointer",
                  fontWeight: "600",
                }}
              >
                Delete
              </button>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Index;