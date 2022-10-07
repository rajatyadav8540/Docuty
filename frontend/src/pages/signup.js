
import Header from "../components/signup_login/header"
import Signup from "../components/signup_login/signup"

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
<<<<<<< HEAD
            </div>
=======
                  
                  </div>
>>>>>>> dev
        </div>
        </>
    )
}