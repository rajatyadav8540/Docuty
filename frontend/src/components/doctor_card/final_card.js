import {Doc} from './constant/docdata'
import Template from './card_template'
const doc = Doc
export default function DocCard(){
    
    return(
        <>
        <div className='grid grid-cols-4 gap-4 mx-28'>
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
        </>
    )

}