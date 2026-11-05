import { useState } from "react";
function ProductPage() {
    const [cart, setCart] = useState(0);
    const products = [
        {
            id: 1,
            name: "Laptop",
            price: 55000,
            rating: 4.5,
            image: "https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=500"
        },
        {
            id: 2,
            name: "Mobile",
            price: 25000,
            rating: 4.3,
            image: "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=500"
        },
        {
            id: 3,
            name: "Headphones",
            price: 3000,
            rating: 4.2,
            image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500"
        },
        {
            id: 4,
            name: "Smart Watch",
            price: 5000,
            rating: 4.4,
            image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500"
        },
        {
            id: 5,
            name: "Camera",
            price: 35000,
            rating: 4.6,
            image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=500"
        },
        {
            id: 6,
            name: "Shoes",
            price: 2500,
            rating: 4.1,
            image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500"
        }
    ];
    return (
        <div className="bg-gray-100 min-h-screen p-6">
            <div className="max-w-7xl mx-auto">
                <div className="flex justify-between items-center mb-8">
                    <h1 className="text-3xl font-bold text-gray-800">
                        Our Products
                    </h1>
                    <h2 className="bg-blue-600 text-white px-4 py-2 rounded-lg">
                        Cart: {cart}
                    </h2>
                </div>
                <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8">
                    {products.map((product) => (
                        <div
                            key={product.id}
                            className="bg-white rounded-xl shadow-md overflow-hidden hover:shadow-xl transition"
                        >
                            <img
                                src={product.image}
                                alt={product.name}
                                className="w-full h-52 object-cover"
                            />
                            <div className="p-5">
                                <h2 className="text-xl font-bold text-gray-800">
                                    {product.name}
                                </h2>
                                <p className="text-green-600 font-bold text-lg mt-2">
                                    {product.price.toLocaleString("en-IN")}
                                </p>
                                <p className="text-yellow-500 mt-2">
                                     {product.rating} / 5
                                </p>
                                <button
                                    onClick={() => setCart(cart + 1)}
                                    className="w-full bg-blue-600 text-white py-2 rounded-lg mt-4 hover:bg-blue-700"
                                >
                                    Add to Cart
                                </button>
                            </div>
                        </div>
                    ))}
                </div>
            </div>
        </div>
    );
}
export default ProductPage;