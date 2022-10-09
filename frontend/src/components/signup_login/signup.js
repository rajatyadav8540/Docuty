import { useState } from "react";
import { signupFields } from "../../constants/formfield";
import Input from "./input";
import Formaction from "./formaction";
import { useNavigate } from "react-router-dom";
const fields = signupFields;
let fieldsState = {};
fields.forEach((field) => (fieldsState[field.id] = ""));

export default function Signup() {
  const [signupState, setsignupState] = useState(fieldsState); // setting up the state
  const history = useNavigate();
  const handleChange = (f) => {
    setsignupState({ ...signupState, [f.target.id]: f.target.value });
  };

  async function signup(e) {
    e.preventDefault();

    console.log(JSON.stringify(signupState));
    let result = await fetch("http://127.0.0.1:8000/api/register/", {
      //fetching api for crosss origin credentials matching
      method: "POST",
      body: JSON.stringify(signupState),
      headers: {
        "Content-type": "application/json",
        Accept: "application/json",
      },
    });
    result = await result.json();
    if (
      JSON.stringify(result.username) === '["This field may not be blank."]' ||
      JSON.stringify(result.password) === '["This field may not be blank."]'
    ) {
      alert("username or password field can't be empty");
    } else if (
      JSON.stringify(result.email) === '["Enter a valid email address."]'
    ) {
      ///verifying data
      alert("Enter a valid email address.");
    } else if (result.token) {
      history("/login");
    }
  }

  return (
    <form className="mt-8 space-y-6">
      <div className="space-y-px">
        {fields.map((field) => (
          <Input
            key={field.id}
            handleChange={handleChange}
            value={signupState[field.id]}
            labelText={field.labelText}
            labelFor={field.labelFor}
            id={field.id}
            name={field.name}
            type={field.type}
            isRequired={field.isRequired}
          />
        ))}
        <Formaction text="Sign up" handle={signup} />
      </div>
    </form>
  );
}
