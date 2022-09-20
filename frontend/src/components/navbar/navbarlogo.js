import {Link} from 'react-router-dom';
export default function NavLogo({
    logo,
    logoUrl
}){
    return(
        <Link  to={logoUrl} className=" text-3xl font-semibold text-green-500  ">
            {logo}
        </Link>
    )
}