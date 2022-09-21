import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../pages/start.dart';

class MyDrawer extends StatelessWidget {

  final List drawerMenuListname = const [
    {
      "leading" : Icon(Icons.abc),
      "title":"",
      "trailing":Icon(Icons.chevron_right),
      "action_id":1,
    }
  ];

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: SizedBox(
        width:280,
        child: Drawer(
         
          child: ListView( 
            padding: EdgeInsets.zero,
            
             children:[
               SingleChildScrollView(
                 child: Container(
                  margin: EdgeInsets.all(0),
                  height:300,
                  width:double.maxFinite,
                  decoration: BoxDecoration(color:Color.fromARGB(255, 25, 221, 48),
                  borderRadius: BorderRadius.circular(30)),
                  child:Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left:26,),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/google.png"),radius: 80,
                      ),
                    ),
                    SizedBox(width:10),
                    Padding(
                      padding: const EdgeInsets.only(top:150),
                      child: Column(
                        children: [
                          Text("User name", style:TextStyle(fontSize:30,fontWeight: FontWeight.bold,color:Color.fromARGB(244, 50, 48, 48),)
                          ),
                           Text("Edit Profile",textAlign: TextAlign.start, style:TextStyle(fontSize:16,fontWeight: FontWeight.bold,color:Color.fromARGB(244, 50, 48, 48),)
                          ),
                        ],
                      ),
                    ),
                    
                     Padding(
                       padding: EdgeInsets.only(top:32),
                       child: Column(
                       crossAxisAlignment:CrossAxisAlignment.end,
                         children: [
                           IconButton(onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return startpage();
                  }));
                           },  icon: Icon(Icons.arrow_back_ios,color: Color.fromARGB(255, 35, 33, 33),)),
                         ],
                       ),
                     )
    
                  ],)
                 ),
               ),
          
              
             
               ListTile(
               leading: IconButton(
            onPressed: () {
           /* Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MyDrawer();
                  }));*/
            },

            icon: Icon(CupertinoIcons.line_horizontal_3_decrease,
      color: Colors.black,)//dddd(),
            //icon: SvgPicture.asset("assets\icons\mu.svg",color: Colors.black12),
          ),   
          trailing: Icon(Icons.chevron_right),     
                 title:Text(    
                   "Video consult",
                   textScaleFactor: 1.3,
              style: TextStyle(
                color:Colors.black,fontWeight: FontWeight.w500,
              ),  
                 ),
                  onTap: ( ) {
                     
                 },
               ),
                ListTile(
                 
                 title:Text(    
                   "Your Order",
                   textScaleFactor: 1.3,
              style: TextStyle(
                color:Colors.black,fontWeight: FontWeight.w500,//fontStyle:FontStyle.italic,
              ),  
              
                 ),
                  onTap: ( ) {
               
                 },
                 
               ),
                ListTile(
                
                 title:Text(    
                   "Medicine",
                   textScaleFactor: 1.3,
              style: TextStyle(
                color:Colors.black,fontWeight: FontWeight.w500,
              ),  
                 ),
                  onTap: ( ) {
               
                 },
               ),
    
               ListTile(
               
                 title:Text(    
                   "Lab out",
                   textScaleFactor: 1.3,
              style: TextStyle(
                color:Colors.black,
              ),  
                 ),
                  onTap: ( ) {
              
                 },
    
               ),
                ListTile(
               
                 title:Text(    
                   "Log Out",
                   textScaleFactor: 1.3,
              style: TextStyle(
                color:Colors.black,fontWeight: FontWeight.w500,
              ),  
                 ),
                  onTap: ( ) {
             
                 },
                 
               ),
               
             
             ]
          )
        ),
      ),
    );
      
    
  }
}



