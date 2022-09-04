
import Header from "../components/header"
import Signup from "../components/signup"
import Button from "../components/formaction"
import Navbar  from "../components/navbarbase"
export default function SignDoc(){
    return(
        <>
        <Navbar/>
        <div className="flex justify-center items-center h-screen">
            <div>
             <Header
                heading="Welcome Doc !Sign up to your account"
                paragraph="Already have an account? "
                linkName="Login Here Doc"
                linkUrl="/login_doc"
                />
                
                  <Signup/>
                  <Button text='signup'/>
                  </div>
        </div>
        </>
    )
}