export default function Formaction({
    text,
    handle,
    type = "button",
    action = "submit",
  }) {
    return (
      <div>
        {
          type==='button'?
        <button
          onClick={handle}
          action={action}
          className="px-40 mt-8 rounded-full text-black text-xl py-3 bg-green-500 hover:bg-green-400"
        >
          {text}
        </button>
        :
        <div>
          </div>
  }
      </div>
    );
  }
  