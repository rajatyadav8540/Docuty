import { useState, useEffect } from 'react';
import { loginFields } from '../../constants/formfield';
import Input from './input';
import Formaction from './formaction';
import { useNavigate } from 'react-router-dom';

const fields = loginFields;
let fieldsState = {};
fields.forEach((field) => (fieldsState[field.id] = ''));

export default function Login() {
	const [loginState, setLoginState] = useState(fieldsState);
	const history = useNavigate();
	const handleChange = (e) => {
		setLoginState({ ...loginState, [e.target.id]: e.target.value });
	};

	const login = async (e) => {
		e.preventDefault();
		console.log(JSON.stringify(loginState));
		let result = await fetch('http://127.0.0.1:8000/api/login/', {
			method: 'POST',
			body: JSON.stringify(loginState),
			headers: {
				'Content-type': 'application/json',
				Accept: 'application/json',
			},
		});
		result = await result.json();

		if (
			JSON.stringify(result.username) === '["This field may not be blank."]' ||
			JSON.stringify(result.password) === '["This field may not be blank."]'
		) {
			alert('Username and password field cannot be empty');
		} else if (
			JSON.stringify(result.non_field_errors) ===
			'["Unable to log in with provided credentials."]'
		) {
			alert('Enter valid credentials');
		} else if (result.token) {
			console.log('congrats');
			localStorage.setItem('token', JSON.stringify(result.token));
			history('/');
		}
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
