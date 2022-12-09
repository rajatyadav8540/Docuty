import Cards_title from "./cards_title.js";
import Store from "./card_store.js";
import firebase from "../../index.js";
import { useState, useEffect } from "react";
import React from "react";
import { Link } from "react-router-dom";
export default function Card_body() {
  const [data, setdata] = useState("");
  useEffect(() => {
    let ref = firebase.database().ref("City");
    ref.on("value", (snapshot) => {
      const info = snapshot.val();
      setdata(info);
    });
  }, []);

  return (
    <>
      {console.log(Object.entries(data))}
      <div className="grid grid-cols-4 gap-4">
        {Object.entries(data).map((dataa) => (
          <Link
            to="/serve/display/param"
            state={{ data: dataa[1].name }} // your data array of objects
            className="hover:no-underline hover:text-black"
          >
            <Cards_title title={dataa[1].name} />
          </Link>
        ))}
      </div>
      <h1 className="text-3xl text-left font-bold m-8">Store in banglore</h1>
    </>
  );
}
