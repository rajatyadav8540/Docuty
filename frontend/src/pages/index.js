
import Navbar  from "../components/navbar/navbarbase"
import MainBanner from "../components/main_banner/main_banner"
import Full from "../components/popular_disease/full"
import Banner from '../components/second_banner/second_banner'
import { useState } from "react"
import DocCard from "../components/doctor_card/final_card"
import Download from "../components/download_app/full_download"
import FullTestimonial from "../components/testimonial/full"
import Company from "../components/footer/company"
import FullFooter from "../components/footer/fullfooter"
import BasicButtons from "../components/input/button"



export default function Index(){
   
    return(
        <div>
             <Navbar/> 

               <MainBanner 
                message='here are you welcome'
                buttonName ='OUR SEVICES'
               /> 
               <Banner 
               heading ="djsfgbjsdhgf"
               content ="Bacon ipsum dolor amet buffalo qui occaecat ut exercitation sausage burgdoggen tri-tip reprehenderit sunt cupim. In bacon drumstick, excepteur cupim picanha strip steak short ribs shankle adipisicing eu enim tempor. Burgdoggen ut velit incididunt, hamburger beef reprehenderit aute labore qui dolor capicola occaecat ullamco cupidatat. Pastrami occaecat drumstick pork andouille."
               />
               <DocCard /> 
               <Full/>
               <Download/>
               <FullTestimonial/>
               <FullFooter />
               
                          
        </div>
    )
}