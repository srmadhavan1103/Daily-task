
function PassValue() {
  function showMessage(value) {
    alert("Hello " + value);
  }
  return (
    <div>
      <h2>Passing Value to Event</h2>

      <button onClick={() => showMessage("Madhavan")}>
        Click Me
      </button>
    </div>
  );
}
export default PassValue;
