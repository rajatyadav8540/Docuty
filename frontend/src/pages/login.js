
import Header from "../components/signup_login/header"
import Login from "../components/signup_login/login"
import Button from "../components/signup_login/formaction"
import Navbar  from "../components/navbar/navbarbase"

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