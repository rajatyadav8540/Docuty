const fixedInputClass=" bg-transparent border-b  appearance-none relative block w-full px-3 py-2  placeholder-gray-500 text-black focus:outline-none focus:ring-green-500 focus:border-green-500 focus:z-10 sm:text-sm"
export default function Input({
    handleChange,
    value,
    labelText,
    labelFor,
    id,
    name,
    type,
    isRequired=false,
    placeholder,
    customClass
}){
    return(
        <div className="my-5">
            <div  className="text-gray-400/50 text-left">
              {labelText}
            </div>
            <input
              onChange={handleChange}
              value={value}
              id={id}
              name={name}
              type={type}
              required={isRequired}
              className={fixedInputClass+customClass}
              placeholder={placeholder}
            />
          </div>
    )
}