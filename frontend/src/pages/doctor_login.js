
import Header from "../components/header"
import Login from "../components/login"
import Button from "../components/formaction"
import Navbar  from "../components/navbarbase"

export default function LoginDoc(){
    return(
        <>
        <Navbar/>
        <div className="flex justify-center items-center h-screen">
        <div>
             <Header
                heading="Hyy Doc! Login to your account"
                paragraph="Don't have an account yet? "
                linkName="Sign up Doc"
                linkUrl="/signup_doc"
                />

                <Login/>
                <Button text='login'/>
                </div>
            
        </div>
        </>
    )
}