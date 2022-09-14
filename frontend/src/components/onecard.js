export default function OneCard({
    service,
    imageUrl 
}){
    return(
        <>
            <div className="flex justify-center">
                <div>
                    <div>
                        <img src={imageUrl} className=" h-32 w-32 mb-4" ></img>
                    </div>
                    <div>
                        <div className="text-lg bg-green-500 p-2 rounded-full hover:bg-green-600 font-semibold"> 
                           {service.toUpperCase()}
                        </div>
                    </div>
                </div>
            </div>
        </>
    )
}