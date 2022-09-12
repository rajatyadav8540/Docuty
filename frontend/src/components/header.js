import {Link} from 'react-router-dom';

export default function Header({
    heading,
    paragraph,
    linkName,
    linkUrl="#"
}){
    return(
        <div style={{fontFamily: "'Nunito', sans-serif"}} className="">
            <div>
                <div className="text-4xl mb-4">
                    {heading}
                </div>
                <div className="text-xl">
                    {paragraph}{''}
                    <Link to={linkUrl} className="text-green-500 hover:text-green-400">
                        {linkName}
                    </Link>
                </div>
            </div>
        </div>
    )
}