
import 'package:doc2/pages/login_page.dart';
import 'package:doc2/widget/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../utils/image_carousel.dart';
import '../widget/location.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var images = {
    "google.png": "go",
    "login.png": "login",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
             Padding(
               padding: const EdgeInsets.only(left:5),
               child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MyDrawer();
                  }));
                },

                icon:const Icon( CupertinoIcons.line_horizontal_3_decrease,
      color: Colors.black,)
                //icon: SvgPicture.asset("assets\icons\mu.svg",color: Colors.black12),
            ),
             ),
           
             Padding(
               padding: const EdgeInsets.only(top:14,bottom:7,left:8,right:3),
               child: Text(
            "*Docuty*",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
            ),
            //style:TextStyle(color:Colors.black),
          ),
             ),
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.015,
             width: MediaQuery.of(context).size.width * 0.45,
              margin:const EdgeInsets.only(left:10,top:7 ,right: 10,bottom:7),
              
              padding: EdgeInsets.only(left:24,bottom:5),
         decoration: BoxDecoration(color:Color.fromARGB(27, 70, 77, 67),
         borderRadius: BorderRadius.circular(30),
             /* boxShadow: [BoxShadow(
          offset: Offset(0, 10),
          blurRadius: 50,
          color:Colors.black.withOpacity(0.23),
         ),],*/
       
         ),
         
         child: TextField(
          decoration:InputDecoration(
            hintText: "Search",hintStyle: TextStyle(color:Colors.black54
            ),
            enabledBorder:InputBorder.none,
              focusedBorder:InputBorder.none,    
          ),
         ),
             
            ),
             Padding(
               padding: const EdgeInsets.only(right:5),
               child: IconButton(
                onPressed: () {
                 showSearch(
                  context:context,
                  delegate:MySearchDelegate(),
                 );
                },

                icon:const Icon(
                  Icons.location_on_outlined),
                  color:Colors.black
                //icon: SvgPicture.asset("assets\icons\mu.svg",color: Colors.black12),
            ),
             ),
           
          ],
          
        ),
        body: CustomScrollView(

          slivers: [
            SliverPadding(
                padding: EdgeInsets.only(left:25,right:25,top:9,bottom: 9),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    children: [
                     
                      
                        SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.425,
                        child: ClipRRect(
                           borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            bottomLeft: Radius.circular(60),
                          ),
                          child: Image.asset("assets/images/capsule.png",
                           fit: BoxFit.cover,
                           ),
                        ),
                       /* decoration: const BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            bottomLeft: Radius.circular(60),
                          ),
                        ),*/
                        ),
                      
                      SizedBox(
                        // height: MediaQuery.of(context).size.height * 0.015,
                        width: MediaQuery.of(context).size.width * 0.025,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.425,
                        child:ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(60),
                            bottomRight: Radius.circular(60),
                          ),
                          child: Image.asset("assets/images/capsule.png",
                           fit: BoxFit.cover,
                           ),
                        ),
                       
                      ),
                    ],
                  ),
                )),
              
            SliverPadding(
              padding: EdgeInsets.only(left:25,right:25,top:9,bottom: 9),
              sliver: SliverToBoxAdapter(child: imagecarosel()),
            ),
            SliverPadding(
              padding: EdgeInsets.only(left: 13, top: 10,bottom: 12),
              sliver: SliverToBoxAdapter(
                  child: Text(
                "Top services",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 10,
                ),
              )),
            ),
            SliverToBoxAdapter(
              child: Container(
                  height: 110,
                  width: double.maxFinite,
                  margin: const EdgeInsets.only(left: 20),
                  child: ListView.builder(
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // margin:const EdgeInsets.only(right:50),
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage("assets/images/" +
                                            images.keys.elementAt(index)),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                  child: Text(
                                images.values.elementAt(index),
                              )),
                            ],
                          ),
                        );
                      })),
            )
          ],
        ));
  }
}
 

