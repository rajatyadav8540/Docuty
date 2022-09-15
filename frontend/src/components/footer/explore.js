import { explore } from "./constant";
import Header from "./header";

export default function  Explorer({}){
    const exp = explore
    return (
        <>
        <div className="flex justify-left">
        <div>
            <div className="mb-4">
                <Header
                heading="Explorer"
                />
            </div>
            {
                exp.map((exp)=>(
                    <h1 className="text-left">
                        {exp.exp}
                    </h1>
                ))
            }
        </div>
        </div>
        </>
    )
}