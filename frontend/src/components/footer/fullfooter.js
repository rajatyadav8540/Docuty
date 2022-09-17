import Bottom from "./bottom";
import Copyright from "./copyright";
import Top from "./top";


export default function FullFooter(){
    return(
        <>
            <div className="px-32 py-24 bg-green-500">
                <div className="border-b ">
                    <Top/>
                </div>
                <div className="border-b ">
                    <Bottom/>
                </div>
                <div>
                    <Copyright 
                    text= 'Copyright © 2022, Docuty. All rights reserved.'
                     />
                </div>
            </div>
        </>
    )
}