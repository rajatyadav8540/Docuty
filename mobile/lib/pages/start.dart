import 'package:doc2/pages/find_Docter.dart';
import 'package:doc2/pages/medicines.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'lab_test.dart';
import 'video_consult.dart';

class startpage extends StatefulWidget {
  startpage({Key? key}) : super(key: key);

  @override
  State<startpage> createState() => _startpageState();
}

class _startpageState extends State<startpage> {
  List Pages = [
    Home(),
    FindDoctors(),
    VideoConsult(),
    Medicines(),
    LabTest(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
          unselectedFontSize: 0,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.grey.withOpacity(0.7),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                label: ("Home"), icon: Icon(CupertinoIcons.home)),
            BottomNavigationBarItem(
                label: ("Find doctor"), icon: Icon(CupertinoIcons.person_crop_circle_fill_badge_minus)),
            BottomNavigationBarItem(
                label: ("Video consult"),
                icon: Icon(CupertinoIcons.video_camera_solid)),
            BottomNavigationBarItem(
                label: ("Medicine"), icon: Icon(CupertinoIcons.cube_box_fill)),
            BottomNavigationBarItem(
                label: ("Lab test"),
                icon: Icon(CupertinoIcons.lab_flask_solid)),
          ]),
    );
  }
}
