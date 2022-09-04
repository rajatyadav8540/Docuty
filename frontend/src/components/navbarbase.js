import Nav from "./navitems";
import NavLogo from "./navbarlogo";

import Log_Sign from "./sing_login_navbar";



export default function Navbar() {
  return (
    <div className="flex justify-between p-8 border-b-2 items-center">
      <div>
        <NavLogo logo="Logo name" logoUrl="/" />
      </div>
      <div className="flex justify-center gap-x-9 items-center">
        <Nav name="About" nameUrl="/about" />
        <Nav name="Link1" nameUrl="/" />
        <Nav name="Link2" nameUrl="/" />
        <Log_Sign
            name="Sign up"
            usernameUrl="/login"
            docnameUrl="/login_doc"
            />
        <Log_Sign
            name="Log in"
            usernameUrl="/signup"
            docnameUrl="/signup_doc"
            />
      </div>
    </div>
  );
}
