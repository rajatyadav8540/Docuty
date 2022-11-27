import Cards_title from "./cards_title.js";
import { data } from "./constant";
const info = data;
console.log(info[1].City);
export default function Card_body() {
  return (
    <div>
      {info.map((dataa) => (
        <div className="flex">
          <img src={dataa.pics} className="h-16 w-16 rounded-full" />
        </div>
      ))}
    </div>
  );
}
