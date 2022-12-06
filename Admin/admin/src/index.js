import React from "react";
import ReactDOM from "react-dom/client";
import "./index.css";
import App from "./App";
import reportWebVitals from "./reportWebVitals";

// Import the functions you need from the SDKs you need
import firebase from "firebase/app";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

const firebaseConfig = {
  apiKey: "AIzaSyAhV4vJAkLcQ9U_kk2OtTXxDyMTHp0WlD0",
  authDomain: "taffy-a9c2d.firebaseapp.com",
  databaseURL: "https://taffy-a9c2d-default-rtdb.firebaseio.com",
  projectId: "taffy-a9c2d",
  storageBucket: "taffy-a9c2d.appspot.com",
  messagingSenderId: "448381700196",
  appId: "1:448381700196:web:3d267fba428d6275dcb771",
  measurementId: "G-NPTPY1V9E4",
};

const app = firebase.initializeApp(firebaseConfig);

const root = ReactDOM.createRoot(document.getElementById("root"));
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
