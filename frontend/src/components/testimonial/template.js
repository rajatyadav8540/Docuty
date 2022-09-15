import Header from "./header"
export default function Template({
    name,
    review,
    image
}){
    return(
        <>
            <div className="mb-12">
                <div>
                    <div className="flex justify-center">
                        <img className="rounded-full  shadow-lg w-32 mb-12 hover:opacity-90" src ={image}></img>
                    </div>
                    <div>
                        <h1 className="text-2xl mb-4">
                            {name}
                        </h1>
                        <h1 className="text-md opacity-50">
                            {review}
                        </h1>
                    </div>
                </div>
            </div>
        </>
    )
}