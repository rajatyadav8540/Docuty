import {Link} from 'react-router-dom';

export default function Nav({
    name,
    nameUrl
}){
    return(
        <div>
        <Link to={nameUrl} className="text-xl text-black font-semibold hover:bg-white hover:text-green-500" > {name}</Link>
           
        </div>
    )
}