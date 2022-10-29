import NavLogo from "./navbarlogo";
import Logout from "../logout_button/logout_button";
import Log_Sign from "./sing_login_navbar";
import { useNavigate } from "react-router-dom";
export default function Navbar() {
  const history = useNavigate();
  const loggedIn = localStorage.getItem("token");
  function onsubmit(e) {
	console.log('sdfgdsfds')
    e.preventDefault();
    if (loggedIn) {
      window.localStorage.clear();
      history("/login");
    }
  }
  return (
    <div className="flex justify-between p-8 border-b-2 items-center">
      <div>
        <NavLogo logo="Docuty" logoUrl="/" />
      </div>
      {!loggedIn ? (
        <div className="flex justify-center gap-x-9 items-center">
          <Log_Sign name="Login" usernameUrl="/login" docnameUrl="/login_doc" />
          <Log_Sign
            name="Sign up"
            usernameUrl="/signup"
            docnameUrl="/signup_doc"
          />
        </div>
      ) : (
        <div>
          <Logout text="Logout" handle={onsubmit} />
        </div>
      )}
    </div>
  );
}
