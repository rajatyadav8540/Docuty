

import doc from './doc.png'
export default function MainBanner  ({
  message,
  buttonName
}){
        
            return(
              <>    
              
              <div className='bg-green-500 my-24 mx-32 rounded-3xl flex justify-between px-24 items-center'>
                <div className=''>
                    <div>
                      <h1 className='text-4xl font-semibold mb-4'>
                        {message}
                      </h1>
                      <div>
                        <button className='text-3xl text-white bg-black px-8 py-4 rounded-lg hover:bg-white hover:text-black'>
                          {buttonName} 
                        </button>
                      </div>
                    </div>
                </div>
                <div className='-mt-20'>
                    <img src={doc} alt="logo" className=''/>
                </div>
              </div>
              
              
             </>
            )
      
}