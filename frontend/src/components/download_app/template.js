import Button from "./button";
export default function Template({
    heading,
    subheading
})
{
    return(
        <>
            <div className="flex justify-center items-center mt-32 mx-32 gap-8">
                <div>
                    <img src="https://img.freepik.com/free-vector/app-development-concept-illustration_114360-5120.jpg?w=826&t=st=1663220101~exp=1663220701~hmac=fe17c6902f839c9047a564480e295d1696bf954afc7c1611c82fc762d75ab496"></img>
                </div>
                <div>
                    <h1 className="text-left text-5xl mb-8">
                        {heading}
                    </h1>
                    <h1 className="text-left text-lg opacity-50">
                        {subheading}
                    </h1>
                    <div className="flex justify-left gap-8 mt-12">
                        <div>
                              <Button 
                              name="App store"
                              image ="https://cdn-icons-png.flaticon.com/512/831/831378.png"
                              />
                        </div>
                        <div>
                                <Button 
                                    name="Play store"
                                    image ="https://cdn-icons-png.flaticon.com/512/104/104089.png"
                                    />
                        </div>
                    </div>
                </div>
            </div>
        </>
    )
}