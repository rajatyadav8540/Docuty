
import Navbar  from "../components/navbarbase"
import MainBanner from "../components/main_banner"
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