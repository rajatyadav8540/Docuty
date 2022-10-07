export default function DivMid ({
    name,
    speciality
}) {
    return(
        <>
            <div className=" bg-green-500 rounded-t-3xl p-12 -mt-12">
                    <h1 className='text-left text-white font-bold text-2xl'>
                        {name}
                    </h1>
                    <h1 className='text-left text-white font-bold text-lg'>
                        {speciality}
                    </h1>
                </div>
        </>
    )
}