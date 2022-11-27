//import 'dart:html';

<<<<<<< HEAD
import 'package:doc2/pages/login_page.dart';
import 'package:doc2/widget/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
=======
import 'package:doc2/widget/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6

import '../utils/image_carousel.dart';
import '../widget/doc_card.dart';
import '../widget/location.dart';
<<<<<<< HEAD
import '../widget/numorphic.dart';

=======
import 'doc_intro.dart';
 
 var scaffoldkey = GlobalKey<ScaffoldState>();
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var images = {
    "fever.png": "fever",
    "sneeze.png": "sneeze",
    "fever2.png": "sneeze",
    "login.png": "sneeze",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
        // drawer: MyDrawer(),
=======
      key :scaffoldkey,
         drawer: const DrawerScreen(),
        
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Padding(
<<<<<<< HEAD
              padding: const EdgeInsets.only(left: 5),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyDrawer();
                    }));
=======
              padding: const EdgeInsets.only(left:0,right:8),
              child: IconButton(
                  onPressed: () {
                   scaffoldkey.currentState?.openDrawer();
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                  },
                  icon: const Icon(
                    CupertinoIcons.line_horizontal_3_decrease,
                    color: Colors.black,
                  )
                  //icon: SvgPicture.asset("assets\icons\mu.svg",color: Colors.black12),
                  ),
            ),
<<<<<<< HEAD
            Padding(
              padding:
                  const EdgeInsets.only(top: 14, bottom: 7, left: 8, right: 3),
=======
          const Padding(
              padding: EdgeInsets.only(
                top: 14,
                bottom: 7,
              ),
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
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
              margin:
                  const EdgeInsets.only(left: 10, top: 7, right: 10, bottom: 7),
<<<<<<< HEAD
              padding: EdgeInsets.only(left: 24, bottom: 5),
              decoration: BoxDecoration(
                color: Color.fromARGB(27, 70, 77, 67),
=======
              padding: const EdgeInsets.only(left: 24, bottom: 5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(27, 70, 77, 67),
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                borderRadius: BorderRadius.circular(30),
                /* boxShadow: [BoxShadow(
          offset: Offset(0, 10),
          blurRadius: 50,
          color:Colors.black.withOpacity(0.23),
         ),],*/
              ),
<<<<<<< HEAD
              child: TextField(
=======
              child: const TextField(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.black54),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: MySearchDelegate(),
                    );
                  },
                  icon: const Icon(Icons.location_on_outlined),
                  color: Colors.black
                  //icon: SvgPicture.asset("assets\icons\mu.svg",color: Colors.black12),
                  ),
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
                padding:
<<<<<<< HEAD
                    EdgeInsets.only(left: 25, right: 25, top: 9, bottom: 9),
=======
                    const EdgeInsets.only(left: 25, right: 25, top: 9, bottom: 9),
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                sliver: SliverToBoxAdapter(
                  child: Row(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
<<<<<<< HEAD
                        width: MediaQuery.of(context).size.width * 0.425,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
=======
                        width: MediaQuery.of(context).size.width * 0.423,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                            topLeft: Radius.circular(60),
                            bottomLeft: Radius.circular(60),
                          ),
                          child: Image.asset(
                            "assets/images/capsule.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        // height: MediaQuery.of(context).size.height * 0.015,
                        width: MediaQuery.of(context).size.width * 0.025,
                      ),
<<<<<<< HEAD
                      Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.425,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
=======
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.423,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                            topRight: Radius.circular(60),
                            bottomRight: Radius.circular(60),
                          ),
                          child: Image.asset(
                            "assets/images/capsule.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            SliverPadding(
<<<<<<< HEAD
              padding: EdgeInsets.only(
=======
              padding: const EdgeInsets.only(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                left: 25,
                right: 25,
              ),
              sliver: SliverToBoxAdapter(
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.003,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)))),
            ),
            const SliverPadding(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              sliver: SliverToBoxAdapter(child: imagecarosel()),
            ),
            SliverPadding(
<<<<<<< HEAD
              padding: EdgeInsets.only(
=======
              padding: const EdgeInsets.only(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                left: 25,
                right: 25,
              ),
              sliver: SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.001,
                  // width: MediaQuery.of(context).size.width * 0.5,
                ),
              ),
            ),
<<<<<<< HEAD
            SliverPadding(
=======
            /*  SliverPadding(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
              ),
              sliver: SliverToBoxAdapter(
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.003,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)))),
            ),
            SliverPadding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 7),
              sliver: SliverToBoxAdapter(
                  child: Text(
                "About Docters",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              )),
            ),
            SliverPadding(
              padding: EdgeInsets.only(left: 25, right: 0),
              sliver: SliverToBoxAdapter(
                  child: Row(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/images/login.png",
                        fit: BoxFit.cover,
                        // height: 250,
                      ),
                    ),
                  ),
                  SizedBox(
                    // height: MediaQuery.of(context).size.height * 0.025,
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Column(children: [
                          Text(
                            "You are in safe hands now.",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              color: Colors.black87,
                              fontSize: 20,
                            ),
                          ),
<<<<<<< HEAD
                           SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                    //width: MediaQuery.of(context).size.width * 0.01,
                  ),
                           Text(
                "private online consultation with veified docters in all specialists.vhjZXV bjcaj nbm csajac wdkhqs d dd dwwmhq",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                  fontSize: 15,
                ),
              )
=======
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                            //width: MediaQuery.of(context).size.width * 0.01,
                          ),
                          Text(
                            "private online consultation with veified docters in all specialists.vhjZXV bjcaj nbm csajac wdkhqs d dd dwwmhq",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          )
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                        ]),
                      )),
                ],
              )),
<<<<<<< HEAD
            ),
            SliverPadding(
              padding: EdgeInsets.only(
=======
            ),*/
            SliverPadding(
              padding: const EdgeInsets.only(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                left: 25,
                right: 25,
              ),
              sliver: SliverToBoxAdapter(
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.003,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)))),
            ),
            SliverPadding(
<<<<<<< HEAD
              padding: EdgeInsets.only(
=======
              padding: const EdgeInsets.only(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                left: 25,
                right: 25,
              ),
              sliver: SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.001,
                  // width: MediaQuery.of(context).size.width * 0.5,
                ),
              ),
            ),
<<<<<<< HEAD
            SliverPadding(
=======
            const SliverPadding(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
              padding: EdgeInsets.only(left: 25, top: 7),
              sliver: SliverToBoxAdapter(
                  child: Text(
                "Top Rated Docters",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
              )),
            ),
            SliverPadding(
<<<<<<< HEAD
              padding: EdgeInsets.only(
=======
              padding: const EdgeInsets.only(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                left: 25,
                right: 25,
              ),
              sliver: SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.003,
                  // width: MediaQuery.of(context).size.width * 0.5,
                ),
              ),
            ),
<<<<<<< HEAD
            SliverPadding(
=======
            const SliverPadding(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
              padding: EdgeInsets.only(left: 25),
              sliver: SliverToBoxAdapter(
                  child: Text(
                "private online consultation with veified docters in all specialists",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                  fontSize: 15,
                ),
              )),
            ),
            SliverPadding(
<<<<<<< HEAD
              padding: EdgeInsets.only(
=======
              padding: const EdgeInsets.only(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                left: 25,
                right: 25,
              ),
              sliver: SliverToBoxAdapter(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.008,
                  // width: MediaQuery.of(context).size.width * 0.5,
                ),
              ),
            ),
            SliverPadding(
<<<<<<< HEAD
              padding: EdgeInsets.only(
=======
              padding: const EdgeInsets.only(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                left: 0,
                right: 0,
              ),
              sliver: SliverToBoxAdapter(
                  child: Container(
                      height: 470,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
<<<<<<< HEAD
                          borderRadius: BorderRadius.circular(40)),
                      child: Stack(children: [
                        //left top
                        Positioned(
                            top: 80,
                            left: 25,
                            child: Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width * 0.42,
                              child: DocCard(),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                            )),
                        Positioned(
                            top: 30,
                            left: 38,
                            child: mum(
                              child: Container(
                                height: 110,
                                width: MediaQuery.of(context).size.width * 0.32,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    "assets/images/doc.png",
                                    fit: BoxFit.cover,
                                    // height: 250,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            )),
                        // right side top
                        Positioned(
                            top: 80,
                            right: 25,
                            child: Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width * 0.42,
                              child: DocCard(),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                            )),
                        Positioned(
                            top: 30,
                            right: 38,
                            child: mum(
                              child: Container(
                                height: 110,
                                width: MediaQuery.of(context).size.width * 0.32,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    "assets/images/doc.png",
                                    fit: BoxFit.cover,
                                    // height: 250,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            )),
                        // left bottom
                        Positioned(
                            top: 300,
                            left: 25,
                            child: Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width * 0.42,
                              child: DocCard(),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                            )),
                        Positioned(
                            top: 250,
                            left: 38,
                            child: mum(
                              child: Container(
                                height: 110,
                                width: MediaQuery.of(context).size.width * 0.32,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    "assets/images/doc.png",
                                    fit: BoxFit.cover,
                                    // height: 250,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            )),
                        // right bottom
                        Positioned(
                            top: 300,
                            right: 25,
                            child: Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width * 0.42,
                              child: DocCard(),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                            )),
                        Positioned(
                            top: 250,
                            right: 38,
                            child: mum(
                              child: Container(
                                height: 110,
                                width: MediaQuery.of(context).size.width * 0.32,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    "assets/images/doc.png",
                                    fit: BoxFit.cover,
                                    // height: 250,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            )),
                      ]))),
            ),
            SliverPadding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 7),
              sliver: SliverToBoxAdapter(
                  child: Column(
                children: [
=======
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(children: const [
                        //left top
                        Htr1p(
                            80,
                            25,
                            DocCard("name",
                                Color.fromARGB(255, 25, 221, 48))),
                        Htr2p(30, 38, Docintro(), "assets/images/doc.png"),

                        // right side top
                        Htr3p(
                            80,
                            25,
                            DocCard("name",
                                Color.fromARGB(255, 25, 221, 48))),
                        Htr4p(30, 38, Docintro(), "assets/images/doc.png"),

                        // left bottom
                        Htr1p(
                            300,
                            25,
                            DocCard("name",
                                Color.fromARGB(255, 25, 221, 48))),
                        Htr2p(250, 38, Docintro(), "assets/images/doc.png"),

                        // right bottom
                        Htr3p(
                            300,
                            25,
                            DocCard("name",
                                Color.fromARGB(255, 25, 221, 48))),
                        Htr4p(250, 38, Docintro(), "assets/images/doc.png"),
                      ]))),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 7),
              sliver: SliverToBoxAdapter(
                  child: Column(
                children: const [
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                  Text(
                    "Our services ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "private online consultation with veified docters in all specialists",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  )
                ],
              )),
            ),
            SliverPadding(
<<<<<<< HEAD
                padding: EdgeInsets.only(right: 25, top: 16,bottom: 10),
=======
                padding: const EdgeInsets.only(right: 25, top: 16, bottom: 10),
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                sliver: SliverToBoxAdapter(
                  child: Container(
                      height: 120,
                      width: double.maxFinite,
                      margin: const EdgeInsets.only(left: 30),
                      child: ListView.builder(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 35),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // margin:const EdgeInsets.only(right:50),
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image: AssetImage("assets/images/" +
                                                images.keys.elementAt(index)),
                                            fit: BoxFit.cover)),
                                  ),
<<<<<<< HEAD
                                  SizedBox(
=======
                                  const SizedBox(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                                    height: 8,
                                  ),
                                  Container(
                                      child: Text(
                                    images.values.elementAt(index),
                                  )),
<<<<<<< HEAD
                                 
                                  
=======
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                                ],
                              ),
                            );
                          })),
                )),
<<<<<<< HEAD
                SliverPadding(
              padding: EdgeInsets.only(
=======
            SliverPadding(
              padding: const EdgeInsets.only(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                left: 60,
                right: 60,
              ),
              sliver: SliverToBoxAdapter(
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.003,
                      decoration: BoxDecoration(
<<<<<<< HEAD
                          color: Color.fromARGB(255, 25, 221, 48),
                          borderRadius: BorderRadius.circular(30)))),
            ),
             SliverPadding(
              padding: EdgeInsets.only(
=======
                          color: const Color.fromARGB(255, 25, 221, 48),
                          borderRadius: BorderRadius.circular(30)))),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                left: 0,
                right: 0,
              ),
              sliver: SliverToBoxAdapter(
                  child: Container(
                      height: 370,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
<<<<<<< HEAD
                          borderRadius: BorderRadius.circular(40)),
                      child: Stack(children: [
                        //left top
                        Positioned(
                            top: 30,
                            left: 25,
                            child: Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width * 0.42,
                              child:mum(
                              child: Container(
                               
                                height: 110,
                                width: MediaQuery.of(context).size.width * 0.32,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    "assets/images/motorbike.png",
                                    //fit: BoxFit.cover,
                                    // height: 250,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                            )),
                       
                        // right side top
                        Positioned(
                            top: 30,
                            right: 25,
                            child: Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width * 0.42,
                              child:mum(
                              child: Container(
                               
                                
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    "assets/images/shield.png",
                                   // fit: BoxFit.cover,
                                    // height: 250,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                            )),
                        // left bottom
                        Positioned(
                            top: 200,
                            left: 25,
                            child: Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width * 0.42,
                              child:mum(
                              child: Container(
                               
                                height: 110,
                                width: MediaQuery.of(context).size.width * 0.32,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    "assets/images/chemistry.png",
                                    //fit: BoxFit.cover,
                                    // height: 250,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                            )),
                        // right bottom
                        Positioned(
                            top: 200,
                            right: 25,
                            child: Container(
                              height: 140,
                              width: MediaQuery.of(context).size.width * 0.42,
                              child:mum(
                              child: Container(
                               
                                height: 110,
                                width: MediaQuery.of(context).size.width * 0.32,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    "assets/images/results.png",
                                    //fit: BoxFit.cover,
                                    // height: 250,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                            )),
                      ]))),
            ),  
             SliverPadding(
              padding: EdgeInsets.only(
=======
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(children: const [
                        //left top
                        HomeButton(25, 30, "assets/images/motorbike.png"),

                        // right side top
                        HomeButton1(25, 30, "assets/images/shield.png"),

                        // left bottom
                        HomeButton(25, 200, "assets/images/chemistry.png"),

                        // right bottom
                        HomeButton1(25, 200, "assets/images/results.png"),
                      ]))),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                left: 60,
                right: 60,
              ),
              sliver: SliverToBoxAdapter(
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.003,
                      decoration: BoxDecoration(
<<<<<<< HEAD
                          color: Color.fromARGB(255, 25, 221, 48),
                          borderRadius: BorderRadius.circular(30)))),
            ),  
=======
                          color: const Color.fromARGB(255, 25, 221, 48),
                          borderRadius: BorderRadius.circular(30)))),
            ),
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
          ],
        ));
  }
}
