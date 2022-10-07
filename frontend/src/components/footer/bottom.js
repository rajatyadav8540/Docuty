import Header from './header'
import Address from './address'
import Social from './social'


export default function Bottom(){

    return(
        <>
            <div>
                <div className="flex justify-center">
                    <div className='mb-16 mt-8'>
                        <Header
                        heading= 'Docuty'/>
                    </div>
                </div>
                <div className="flex justify-between items-center">
                    <div>
                        <Address
                        comp_name= 'Techtitude Tribe Services Private Limited'
                        address='119/334, Darshan Purwa, Kanpur - 208001'
                        website_url='www.tehtitudetribe.co.in'
                        />
                    </div>
                    <div>
                        <Social/>
                     </div>
                </div>
            </div>
        </>
    )
}