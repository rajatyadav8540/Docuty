import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';

class Medicines extends StatelessWidget {
  const Medicines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       child:Center(
       child:Text("Medicines",style: TextStyle(
         fontWeight: FontWeight.bold,fontSize: 30
       ),
       )
     )


    );
  }
}