import { services } from "./constant"
import Header from "./header"
export default function  Services({}){
    const ser = services
    return (
        <>
        <div className="flex justify-center">
        <div>
            <div className="mb-4">
                <Header
                heading="Services"
                />
            </div>
            {
                ser.map((ser)=>(
                    <h1>
                        {ser.services}
                    </h1>
                ))
            }
        </div>
        </div>
        </>
    )
}