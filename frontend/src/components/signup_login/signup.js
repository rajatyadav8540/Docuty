import { useState } from "react";
import { signupFields } from "../../constants/formfield";
import Input from "./input";
import Formaction from "./formaction";
// import { useNavigate } from 'react-router-dom'
const fields = signupFields;
let fieldsState = {};
fields.forEach((field) => (fieldsState[field.id] = ""));


export default function Signup() {
  const [signupState, setsignupState] = useState(fieldsState);

  const handleChange = (e) => {
    setsignupState({ ...signupState, [e.target.id]: e.target.value });
    
  };
  
  async function signup(e){
    e.preventDefault();
     console.log("adtiya lund hai")
    console.log(JSON.stringify(signupState))
     let result =await fetch("http://127.0.0.1:8000/api/register/",{
      method:"POST",
      body:JSON.stringify(signupState),
      headers:  {
        "Content-type":"application/json",
        "Accept":"application/json"
      }
     })
     result = await result.json();
    
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
        <Formaction
        text="Sign up"
        handle={signup}/>
      </div>
    </form>
  );
}
