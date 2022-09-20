import doc from "./doc.png";
export default function MainBanner({ message, buttonName }) {
  return (
    <>
      <div className="flex justify-center mx-32 my-24 gap-12">
        <div>
          <img
            src="https://images.unsplash.com/photo-1504813184591-01572f98c85f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"
            className="rounded-l-full brightness-75"
          ></img>
        </div>
        <div>
          <img
            src="https://images.unsplash.com/photo-1504813184591-01572f98c85f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1471&q=80"
            className="rounded-r-full brightness-75"
          ></img>
        </div>
      </div>
    </>
  );
}
