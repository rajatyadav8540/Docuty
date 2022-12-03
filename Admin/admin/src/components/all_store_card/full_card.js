import { data } from "./constant.js";
import Button from "./button.js";
const info = data;
export default function Card() {
  return (
    <div className="grid grid-cols-6 gap-4">
      {data.map((info2) => (
        <div className=" max-h-fit rounded-lg border-2 border-red-300 p-4">
          <div>
            <img src={info2.image} className="rounded-lg mx-auto" />
            <h1 className="text-left text-2xl mt-2 pb-4">{info2.phone}</h1>
            <h1 className="truncate text-left text-sm opacity-50 pb-4">
              {info2.text}
            </h1>
            <h1 className="text-left text-lg pb-2">
              {info2.time1} to {info2.time2}
            </h1>
            <Button title="Visit store" />
          </div>
        </div>
      ))}
    </div>
  );
}
