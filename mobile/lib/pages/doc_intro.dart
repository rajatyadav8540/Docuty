import 'package:doc2/pages/start.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/doc_card.dart';
import '../widget/numorphic.dart';

class Docintro extends StatefulWidget {
  Docintro({Key? key}) : super(key: key);

  @override
  State<Docintro> createState() => _DocintroState();
}

class _DocintroState extends State<Docintro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.grey[300],
          ),
        ),
      ),
      Positioned(
            top:32,
            right:20,
        child: Column(
                       crossAxisAlignment:CrossAxisAlignment.end,
                         children: [
                           IconButton(onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return startpage();
                  }));
                           },  icon: Icon(Icons.edit_note_rounded,size: 35,color:Color.fromARGB(255, 35, 33, 33),)),
                         ],
                       ),
                     ),
      Positioned(
            top:32,
            left:25,
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
                     ),
      // image
      Positioned(
        top: 20,
        left: 60,
        right: 60,
        child: Image.asset(
          "assets/images/docintro.png",
          fit: BoxFit.cover,
          height: 250,
        ),
      ),
      Positioned(
        top: 250,
        left: 0,
        right: 0,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.4,
          width: double.maxFinite,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 200,
                  top: 15,
                ),
                child: Text(
                  "Dr.Caroline Wong",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20, right: 270),
                child: Text(
                  "Cardiology",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 25, 221, 48),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
      Positioned(
          top: 265,
          left: 160,
          child: Padding(
            padding: const EdgeInsets.only(left: 50, bottom: 50),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.17,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    "assets/images/message.png",
                    //fit: BoxFit.cover,
                    // height: 250,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
            ),
          )),
      Positioned(
          top: 265,
          right: 30,
          child: Padding(
            padding: const EdgeInsets.only(left: 50, bottom: 50),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.17,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    "assets/images/phone.png",
                    //fit: BoxFit.cover,
                    // height: 250,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
            ),
          )),
      Positioned(
          top: 340,
          left: 0,
          right: 0,
          child: Container(
              height: 500,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                      padding: EdgeInsets.only(left: 25, top: 15),
                      sliver: SliverToBoxAdapter(
                        child: Row(
                          children: [
                            Wrap(
                                children: List.generate(5, (index) {
                              return const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              );
                            })),
                            SizedBox(
                              // height: MediaQuery.of(context).size.height * 0.003,
                              width: MediaQuery.of(context).size.width * 0.27,
                            ),
                            FloatingActionButton.extended(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.location_on_outlined,
                                color: Color.fromARGB(255, 25, 221, 48),
                                size: 30,
                              ),
                              //Image.asset("assets/images/google.png", height: 35, width:30),
                              label: const Text("India", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18,
                          ),),
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                            ),
                          ],
                        ),
                      )),
                      
                  SliverPadding(
                      padding: EdgeInsets.only(
                        left: 25,
                       
                        top: 10,
                      ),
                      sliver: SliverToBoxAdapter(
                        child: Text(
                          "About",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 22,
                          ),
                        ),
                      )),
                  SliverPadding(
                      padding: const EdgeInsets.only(left: 20, top:13,right: 20),
                      sliver: SliverToBoxAdapter(
                        child: Text(
                          "private online consaxam,m s,cmsajc  xakjb asxxakjxjx awejfed scccjs ssjkdbsa csjbcjkcas c cssjkcs,m sca;s csc sicsm, c c,cn feklffhdc;vpiiege  ultation with veified docters in all specialists.vhjZXV bjcaj nbm csajac wdkhqs d dd dwwmhq",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                      )),
                       SliverPadding(
              padding: EdgeInsets.only(
                left: 25,top:8,
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
                      padding: EdgeInsets.only(
                        left: 25,
                        right: 220,top:15,
                      ),
                      sliver: SliverToBoxAdapter(
                        child: Text(
                          "Working Time",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 22,
                          ),
                        ),
                      )),
                  SliverPadding(
                      padding: EdgeInsets.only(
                        left: 25,
                        right: 150,top:15
                      ),
                      sliver: SliverToBoxAdapter(
                        child: Text(
                          "Mon - Fri  09:00 - 17:00 ",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                      )),
                    
                  SliverPadding(
                      padding: EdgeInsets.only(left: 0, right: 0),
                      sliver: SliverToBoxAdapter(
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, top: 150, right: 10,bottom:15),
                            child: FloatingActionButton.extended(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Color.fromARGB(255, 25, 221, 48),
                                size: 30,
                              ),
                              //Image.asset("assets/images/google.png", height: 35, width:30),
                              label: const Text(""),
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 6, top: 150, right: 20,bottom:15),
                            child: FloatingActionButton.extended(
                              onPressed: () {},
                              icon: Image.asset("assets/images/results.png",
                                  height: 35, width: 30),
                              label: const Text(
                                "Book Appointment",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              ),
                              backgroundColor: Color.fromARGB(255, 25, 221, 48),
                              foregroundColor: Colors.black,
                            ),
                          ),
                        ]),
                      )),
                ],
              )))
    ]));
  }
}
