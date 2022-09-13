
import Header from "../components/signup_login/header"
import Signup from "../components/signup_login/signup"
import Button from "../components/signup_login/formaction"
import Navbar  from "../components/navbar/navbarbase"
export default function Sign(){
    return(
        <>
        <Navbar/>
        <div className="flex justify-center items-center h-screen">
            <div>
             <Header
                heading="Sign up to your account"
                paragraph="Already have an account? "
                linkName="Login"
                linkUrl="/login"
                />
                
                  <Signup/>
                  <Button text='signup'/>
                  </div>
        </div>
        </>
    )
}