import {Doc} from './constant/docdata'
import Template from './card_template'
import Header from './card_header'
const doc = Doc
export default function DocCard(){
    
    return(
        <>
        <div className='mx-28'>
            <Header 
            heading='Top rated doctor'
            subHeading ="Private online consultations with verified doctors in all specialists"
            />
        
        <div className='grid grid-cols-4 gap-4 '>
        {
            doc.map((docy)=>(
            <Template 
             name={docy.name}
             image ={docy.img}
             content ={docy.content}
            />
            ))
        }
        </div>
        </div>
        </>
    )

}