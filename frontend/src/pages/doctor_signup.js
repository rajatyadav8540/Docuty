
import Header from "../components/signup_login/header"
import Signup from "../components/signup_login/signup"

import Navbar  from "../components/navbar/navbarbase"
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
                  
                  </div>
        </div>
        </>
    )
}