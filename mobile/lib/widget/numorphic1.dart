import "package:flutter/material.dart";

class mum1 extends StatelessWidget {
  final child;
  const mum1({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
<<<<<<< HEAD
      padding: EdgeInsets.all(8),
      child: Center(child:child),
      decoration: BoxDecoration(color:Color.fromARGB(255, 25, 221, 48),
=======
      padding: const EdgeInsets.all(8),
      child: Center(child:child),
      decoration: BoxDecoration(color:const Color.fromARGB(255, 25, 221, 48),
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
      borderRadius: BorderRadius.circular(12),
         boxShadow: [
                   //dark shadow bottom right
                   BoxShadow(
                    color:Colors.grey.shade500,  //fromARGB(252, 203, 190, 190),
                    blurRadius: 15,
<<<<<<< HEAD
                    offset:Offset(5, 5)
                   ),
               // light side
                   BoxShadow(
=======
                    offset:const Offset(5, 5)
                   ),
               // light side
                   const BoxShadow(
>>>>>>> dc84e91b8b4f89e32560191b097498d3e3aa15c6
                    color:Colors.white,
                    blurRadius: 15,
                    offset:Offset(-5,-5)
                   )
                  ]
      )
    );
  }
}