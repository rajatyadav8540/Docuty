import react from 'react';
import {card} from '../constants/cardconstant'
import OneCard from '../components/onecard';

const one = card ;

export default function Card (){
    return(
        <>
            <div >
                <div className='grid grid-cols-5  gap-4 m-12'>
                    {
                        one.map(c=>
                            <OneCard 
                                key={c.id.toString()}
                                service ={c.service}
                                imageUrl = {c.imgUrl}
                            />
                            )
                    }
                </div>
            </div>
        </>
    )
}