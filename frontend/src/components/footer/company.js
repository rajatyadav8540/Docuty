import { company } from "./constant";
import Header from "./header";

export default function  Companyr({}){
    const comp = company
    return (
        <>
        <div className="flex justify-left">
        <div>
            <div className="mb-4">
                <Header
                heading="Company"
                />
            </div>
            {
                comp.map((comp)=>(
                    <h1 className="text-left">
                        {comp.company}
                    </h1>
                ))
            }
        </div>
        </div>
        </>
    )
}