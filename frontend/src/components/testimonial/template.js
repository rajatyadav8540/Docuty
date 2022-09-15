import Header from "./header"
export default function Template({}){
    return(
        <>
            <div className="flex justify-center">
                <div>
                    <div>
                        <img className="rounded-full" src ={image}></img>
                    </div>
                    <div>
                        <h1>
                            {content}
                        </h1>
                        <h1>
                            {name}
                        </h1>
                    </div>
                </div>
            </div>
        </>
    )
}