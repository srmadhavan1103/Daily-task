import React,{ useState } from "react";
function Product() {
  const [product, setProduct] = useState({
    id: 101,
    name: "Laptop",
    price: 50000,
    brand: "HP"
  });

  function updateProduct() {
    setProduct({
      ...product,
      name: "Mobile",
      price: 20000,
      brand: "Samsung"
    });
  }
  return (
    <div>
      <h2>Product Details</h2>

      <p>ID: {product.id}</p>
      <p>Name: {product.name}</p>
      <p>Price: ₹{product.price}</p>
      <p>Brand: {product.brand}</p>

      <button onClick={updateProduct}>
        Update Product
      </button>
    </div>
  );
}

export default Product;
