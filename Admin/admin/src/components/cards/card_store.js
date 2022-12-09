import Cards_title from "./cards_title";
import firebase from "../../index.js";
import { useState, useEffect } from "react";
import React from "react";
import { useLocation, useParams } from "react-router-dom";
export default function Store() {
  const { data } = useLocation().state;
  const [data_, setdata_] = useState("");
  useEffect(() => {
    let ref = firebase.database().ref("Brands");
    ref.on("value", (snapshot) => {
      const info = snapshot.val();
      setdata_(info);
    });
  }, []);

  return (
    <>
      {console.log(Object.entries(data_))}
      {Object.entries(data_).map((dataa) =>
        data == dataa[0] ? (
          <div className="border-2 p-12 rounded-xl grid grid-cols-4 gap-4">
            {Object.entries(dataa[1]).map((info_) => (
              <Cards_title title={info_[1].id} />
            ))}
          </div>
        ) : (
          <></>
        )
      )}
    </>
  );
}
