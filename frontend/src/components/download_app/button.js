export default function Button({
    name,
    logo
}){
    return (
        <>
            <div className="flex justify-center bg-green-500 hover:bg-green-400 px-8 py-4 rounded-lg">
                <div>
                    <img src ={logo} ></img>
                </div>
                <div>
                    <h1>
                        {name}
                    </h1>
                </div>
            </div>
        </>
    )
}