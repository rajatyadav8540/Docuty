import NavLogo from './navbarlogo';

import Log_Sign from './sing_login_navbar';

export default function Navbar() {
<<<<<<< HEAD
	const loggedIn = localStorage.getItem('token');
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
				<div> </div>
			)}
		</div>
	);
=======
  return (
    <div className="flex justify-between p-8 border-b-2 items-center">
      <div>
        <NavLogo logo="Docuty" logoUrl="/" />
      </div>
      <div className="flex justify-center gap-x-9 items-center">
        <Log_Sign
            name="Login"
            usernameUrl="/login"
            docnameUrl="/login_doc"
            />
        <Log_Sign
            name="Sign up"
            usernameUrl="/signup"
            docnameUrl="/signup_doc"
            />
      </div>
    </div>
  );
>>>>>>> dev
}
