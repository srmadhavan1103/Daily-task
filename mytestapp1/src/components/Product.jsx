import React from "react";
function Product(){
    let isAvailable = false;
    return(
        <div>
            <h1>Product Availability</h1>
            <p>
            {isAvailable ? "Product In Stock":"Out of Stock"}
            </p>
        </div>
    );
}
export default Product;