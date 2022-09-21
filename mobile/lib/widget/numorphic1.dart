import "package:flutter/material.dart";

class mum1 extends StatelessWidget {
  final child;
  const mum1({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Center(child:child),
      decoration: BoxDecoration(color:Color.fromARGB(255, 25, 221, 48),
      borderRadius: BorderRadius.circular(12),
         boxShadow: [
                   //dark shadow bottom right
                   BoxShadow(
                    color:Colors.grey.shade500,  //fromARGB(252, 203, 190, 190),
                    blurRadius: 15,
                    offset:Offset(5, 5)
                   ),
               // light side
                   BoxShadow(
                    color:Colors.white,
                    blurRadius: 15,
                    offset:Offset(-5,-5)
                   )
                  ]
      )
    );
  }
}