
import img from './img.png'
import DivTop from './div_top'
import DivMid from './div_mid'



export default function DocPage()
{
    return ( 
        <>
            
            <div className="container my-32 mx-12">
                <DivTop 
                image = {img}/>
                
                <DivMid 
                name="caresdfdgfd"
                speciality= "csdfsdfsad"/>
                <div className="text-xl bg-slate-50 rounded-xl p-12 text-xl text-left -mt-8">
                    
                </div>
                </div>
        </>
    )
}