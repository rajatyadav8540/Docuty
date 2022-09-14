
import Header from "../components/header"
import Login from "../components/login"
import Button from "../components/formaction"
import Navbar  from "../components/navbarbase"

export default function LoginPage(){
    return(
        <>
        <Navbar/>
        <div className="flex justify-center items-center h-screen">
        <div>
             <Header
                heading="Login to your account"
                paragraph="Don't have an account yet? "
                linkName="Sign up"
                linkUrl="/signup"
                />

                <Login/>
                <Button text='login'/>
                </div>
            
        </div>
        </>
    )
}