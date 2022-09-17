import Company from './company'
import Explorer from './explore'
import Services from './service'

export default function Top(){
    return(
        
        <>
            <div className="flex justify-left gap-8 mb-8">
                <div>
                    <Company/>
                </div> 
                <div>
                    <Explorer/>
                 </div>
                <div>
                     <Services/>
                </div> 
            </div>          
        </>
    )
}