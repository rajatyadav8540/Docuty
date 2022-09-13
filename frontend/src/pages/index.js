
import Navbar  from "../components/navbar/navbarbase"
import MainBanner from "../components/main_banner/main_banner"
import Card from './fullcard'


export default function Index(){
    return(
        <div>
             <Navbar/>

               <MainBanner 
                message='here are you welcome'
                buttonName ='OUR SEVICES'
               /> 
               <Card />
            
        </div>
    )
}