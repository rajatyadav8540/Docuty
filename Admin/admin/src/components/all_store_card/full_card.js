import Button from "./button.js";
import { useState, useEffect } from "react";
import { useLocation, useParams } from "react-router-dom";
import firebase from "../../index.js";

export default function Card() {
  const { data } = useLocation().state;
  const [data_, setdata_] = useState("");
  useEffect(() => {
    let ref = firebase.database().ref("BrandsExplorer");
    ref.on("value", (snapshot) => {
      const info = snapshot.val();
      setdata_(info);
    });
  }, []);
  var stringArray = data.split(/(\s+)/);
  var mew = Object.entries(data_);
  return (
    <div className="grid grid-cols-6 gap-4">
      <div className=" max-h-fit rounded-lg border-2 border-red-300 p-4">
        {Object.entries(data_).map((dataa) =>
          stringArray[2] === dataa[0] ? (
            <div>
              <h1 className="text-left text-2xl mt-2 pb-4">{dataa[0]}</h1>
              <h1 className="truncate text-left text-sm opacity-50 pb-4"></h1>
              <h1 className="text-left text-lg pb-2"></h1>
            </div>
          ) : (
            <></>
          )
        )}
      </div>
    </div>
  );
}
