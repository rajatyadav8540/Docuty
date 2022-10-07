import Template from "./template";
import { dieseas } from "./dieases_constant";
import Header from "../doctor_card/card_header";

export default function Full(){
    const die = dieseas

    return(
        <>
        <div className="mx-64 mt-64">
        <Header 
            heading ='Top rated surgeries'
            subHeading= 'Private online consultations with verified doctors in all specialists'
        />
        <div className="grid grid-cols-4 gap-24 mt-16">
            {
                die.map((die)=>(
                    <Template
                     name = {die.dieseas}
                     image ={die.image}
                     />
                ))

            }
        </div>
        </div>
        </>
    )
}