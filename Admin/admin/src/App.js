import logo from "./logo.svg";
import "./App.css";
import Card_body from "./components/cards/card_full_body";
import Footer from "./components/footer/footer_template.js";
import Card from "./components/all_store_card/full_card.js";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Store from "./components/cards/card_store";
function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <Routes>
          <Route path="/card" element={<Card_body />}></Route>
          <Route path="/card" element={<Store />}></Route>
          <Route path="/card_body" element={<Card />}></Route>
        </Routes>
      </BrowserRouter>
      <Footer />
    </div>
  );
}

export default App;
