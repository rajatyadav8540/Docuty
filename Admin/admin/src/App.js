import "./App.css";
import Card_body from "./components/cards/card_full_body";
import Footer from "./components/footer/footer_template.js";
import Card from "./components/all_store_card/full_card.js";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Store from "./components/cards/card_store";
import firebase from "firebase";
import React from "react";
function App() {
  const firebaseApp = firebase.apps[0];
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
      <code>
        <pre>{JSON.stringify(firebaseApp.options, null, 2)}</pre>
      </code>
    </div>
  );
}

export default App;
