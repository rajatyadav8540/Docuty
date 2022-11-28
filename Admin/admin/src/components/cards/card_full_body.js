import Cards_title from "./cards_title.js";
import { data } from "./constant";
const info = data;
console.log(info[1].City);
export default function Card_body() {
  return (
    <div className="grid grid-cols-4 gap-4">
      {info.map((dataa) => (
        <div className="border-2 p-12 rounded-xl">
          <img src={dataa.pics} className="rounded-full h-16 w-16" />
          <Cards_title title={dataa.City} />
        </div>
      ))}
    </div>
  );
}
