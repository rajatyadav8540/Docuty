export default function Template({
    name,
    image,
}){
    return(
        <>
            <div className="flex justify-center items-center text-center shadow-lg hover:opacity-90 rounded-lg">
                <div>
                    <div>
                        <img className="rounded-lg h-64 w-64 mb-6" src={image}></img>
                    </div>
                    <div>
                        <h1 className="text-xl text-center mb-6">
                            {name}
                        </h1>
                    </div>
                </div>
            </div>
        </>
    )
}