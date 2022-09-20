export default function Header({
    heading
}){
    return(
        <>
            <div>
                <h1 className="text-5xl font-semibold">
                    {heading}
                </h1>
            </div>
        </>
    )
}