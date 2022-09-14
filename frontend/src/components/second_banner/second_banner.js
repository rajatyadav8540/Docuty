import vector from "./vector.jpg"

export default function Banner({
    heading,
    content
}){
    return(
        <>
           <div className="container my-24 px-6 mx-auto">
  {/* Section: Design Block */}
  <section className="mb-32 text-gray-800 text-center md:text-left">
    <div className="">
      <div className="flex flex-wrap items-center">
        <div className="grow-0 shrink-0 basis-auto block lg:flex w-full lg:w-6/12 xl:w-4/12">
          <img src={vector}  className="w-full rounded-t-lg lg:rounded-tr-none lg:rounded-bl-lg" />
        </div>
        <div className="grow-0 shrink-0 basis-auto w-full lg:w-6/12 xl:w-8/12">
          <div className="px-6 py-12 md:px-12">
            <h2 className="text-3xl font-bold mb-2 text-green-600">{heading}</h2>
            <p className="text-gray-500 mb-6 text-xl">
              {content}
            </p>
          
          </div>
        </div>
      </div>
    </div>
  </section>
  {/* Section: Design Block */}
</div>
        </>
    )
}