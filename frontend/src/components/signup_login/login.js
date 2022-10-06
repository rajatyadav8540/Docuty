import { useState } from 'react';
import { loginFields } from '../../constants/formfield';
import Input from './input';
import Formaction from './formaction';

const fields = loginFields;
let fieldsState = {};
fields.forEach((field) => (fieldsState[field.id] = ''));

export default function Login() {
	const [loginState, setLoginState] = useState(fieldsState);

	const handleChange = (e) => {
		setLoginState({ ...loginState, [e.target.id]: e.target.value });
	};

	const login = (e) => {
		e.preventDefault();
		const result = fetch('http://127.0.0.1:8000/api/login/', {
			method: 'POST',
			body: JSON.stringify(loginState),
			headers: {
				'Content-type': 'application/json',
				Accept: 'application/json',
			},
		});
	};

	return (
		<form className="mt-8 space-y-6">
			<div className="space-y-px">
				{fields.map((field) => (
					<Input
						key={field.id}
						handleChange={handleChange}
						value={loginState[field.id]}
						labelText={field.labelText}
						labelFor={field.labelFor}
						id={field.id}
						name={field.name}
						type={field.type}
						isRequired={field.isRequired}
					/>
				))}
				<Formaction text="Login" handle={login} />
			</div>
		</form>
	);
}
