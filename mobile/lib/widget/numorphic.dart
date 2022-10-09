import "package:flutter/material.dart";

class mum extends StatelessWidget {
  final child;
  const mum({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Center(child:child),
      decoration: BoxDecoration(color:Colors.grey[300],
      borderRadius: BorderRadius.circular(12),
         boxShadow: [
                   //dark shadow bottom right
                   BoxShadow(
                    color:Colors.grey.shade500,  //fromARGB(252, 203, 190, 190),
                    blurRadius: 15,
                    offset:const Offset(5, 5)
                   ),
               // light side
                   const BoxShadow(
                    color:Colors.white,
                    blurRadius: 15,
                    offset:Offset(-5,-5)
                   )
                  ]
      )
    );
  }
}