import React,{ useState } from "react";
function Customer() {
  const [customers, setCustomers] = useState([
    "Madhavan",
    "Vijay",
    "Arun"
  ]);

  const [name, setName] = useState("");

  function addCustomer() {
    if (name.trim() !== "") {
      setCustomers([...customers, name]);
      setName("");
    }
  }

  function deleteCustomer(index) {
    setCustomers(
      customers.filter((customer, i) => i !== index)
    );
  }

  return (
    <div>
      <h2>Customer Management</h2>

      <input
        type="text"
        placeholder="Enter customer name"
        value={name}
        onChange={(e) => setName(e.target.value)}
      />
      <button onClick={addCustomer}>
        Add Customer
      </button>

      <h3>Customer List</h3>

      {customers.map((customer, index) => (
        <p key={index}>
          {customer}
          <button onClick={() => deleteCustomer(index)}>
            Delete
          </button>
        </p>
      ))}
    </div>
  );
}

export default Customer;
