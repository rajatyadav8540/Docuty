import { data } from "./constant.js";
import Cards_title from "./cards_title";
const info = data;
export default function Store() {
  return (
    <div className="grid grid-cols-4 gap-4">
      {info.map((dataa) => (
        <div className="border-2 p-12 rounded-xl">
          <img src={dataa.pics} className="h-16 w-16" />
          <Cards_title title={dataa.City} />
        </div>
      ))}
    </div>
  );
}
