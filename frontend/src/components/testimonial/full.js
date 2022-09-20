import Template from "./template";
import { rev } from "./constant";
import Header from "./header";
export default function FullTestimonial(){
    const review  = rev
    return(
        <>
            <div className="mt-32 mb-64">
                <Header
                 heading = 'What our users have to say'
                 />
                <div className="grid grid-cols-4 gap-4 mx-64  mt-24">
                {
                    review.map((rev)=>(
                        <Template
                         name = {rev.name}
                         image = {rev.image}
                         review ={rev.review}
                         />
                    ))
                }
                </div>
            </div>
        </>
    )
}