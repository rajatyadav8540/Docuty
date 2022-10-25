import { useNavigate } from "react-router-dom";
export default function Logout({ handle, text }) {
  return (
    <>
      <button
        onClick={handle}
        type= "submit"
        class="text-xl bg-transparent hover:bg-green-500 text-green-700 font-semibold hover:text-white py-2 px-4 border border-green-500 hover:border-transparent rounded"
      >
        {text}
      </button>
    </>
  );
}
