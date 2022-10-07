export default function Header({
    heading,
    subHeading
}){
    return(
        <>
            <div>
                <h1 className="text-left mx-12 mb-4 text-5xl font-semibold">
                    {heading}
                </h1>
                <h1 className="text-left mx-12 mb-4 text-lg font-semibold">
                    {subHeading}
                </h1>
            </div>
        </>
    )
}