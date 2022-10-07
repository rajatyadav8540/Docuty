
export default function Address({
    comp_name,
    address,
    website_url
}){
    return(
        <>
            <div className="text-left">
                
                <div>
                    {comp_name}
                </div>
                <div>
                    {address}
                </div>
                <div>
                    {website_url}
                </div>
            </div>
        </>
    )
}