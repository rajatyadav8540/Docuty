export default function DivTop ({
    image
}) {
    return(
        <>
            <div className="text-xl bg-slate-200 rounded-t-3xl pt-12 flex justify-center">
                    <img src={image} className="mr-28 mb-12"></img>
            </div>
        </>
    )
}