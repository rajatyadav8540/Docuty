export default function Template({ name, content, image }) {
  return (
    <div className="mb-6 mt-24 max-w-sm lg:mb-0 ">
      <div className="relative block rounded-lg bg-white shadow-lg">
        <div className="flex">
          <div
            className="relative relative mx-8 -mt-4 w-full overflow-hidden overflow-hidden rounded-lg bg-cover bg-cover bg-no-repeat bg-no-repeat shadow-lg"
            data-mdb-ripple="true"
            data-mdb-ripple-color="light"
          >
            <img src={image} className="w-full " />
            <a href="#!">
              <div
                className="absolute top-0 right-0 bottom-0 left-0 h-full w-full overflow-hidden bg-fixed opacity-0 transition duration-300 ease-in-out hover:opacity-100"
                style={{ backgroundColor: "rgba(251, 251, 251, 0.15)" }}
              />
            </a>
          </div>
        </div>
        <div className="p-6">
          <h5 className="mb-2 text-center text-lg font-bold">{name}</h5>
          <h6 className="mb-4 text-center font-medium text-blue-600">
            {content}
          </h6>
        </div>
      </div>
    </div>
  );
}
