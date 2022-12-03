export default function Button({ title, handle }) {
  return (
    <button
      className="inline-flex px-4 py-2 bg-red-500 rounded-lg"
      onClick={handle}
    >
      {title}
    </button>
  );
}
