import { useState } from 'react';
import { signupFields } from "../constants/formfield";
import Input from "./input";

const fields=signupFields;
let fieldsState = {};
fields.forEach(field=>fieldsState[field.id]='');

export default function Signup(){
    const [signupState,setsignupState]=useState(fieldsState);

    const handleChange=(e)=>{
        setsignupState({...signupState,[e.target.id]:e.target.value})
       
    }


    return(
        <form className="mt-8 space-y-6">
        <div className="space-y-px">
            {
                fields.map(field=>
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
                
                )
            }
        </div>

       

      </form>
    )
}