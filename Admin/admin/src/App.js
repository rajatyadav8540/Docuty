import logo from "./logo.svg";
import "./App.css";
import Card_body from "./components/cards/card_full_body";
import Footer from "./components/footer/footer_template.js";
import Card from "./components/all_store_card/full_card.js";
function App() {
  return (
    <div className="App">
      <Card_body />
      <Card />
      <Footer />
    </div>
  );
}

export default App;
