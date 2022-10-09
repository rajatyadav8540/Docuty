import 'package:doc2/utils/homescroll.dart';
import 'package:flutter/material.dart';



class imagecarosel extends StatefulWidget {
  const imagecarosel({
    Key? key,
  }) : super(key: key);
  @override
  State<imagecarosel> createState() => _imagecaroselState();
}

class _imagecaroselState extends State<imagecarosel> {

  int _currentPage=0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.81,
      child:Stack(
       alignment: Alignment.bottomRight,
      children: [PageView.builder(
            itemCount: scroll.length,
            onPageChanged:(value){
             setState(() {
               _currentPage=value;
             });

            },
            itemBuilder:(context, index) => ClipRRect(
              borderRadius:const BorderRadius.all(Radius.circular(12)),
              child: Image.asset(
               scroll[index] ,
              ),
            )
          ),
          Positioned(
            bottom:16,
            right:16,
            child:Row(children:List.generate(
              scroll.length,
              (index)=> Padding(
                padding:const EdgeInsets.only(left:16/4),
              child:ffffff(isActive: index==_currentPage) ,
                )
            )
            )
          )
          
          ], 
        
        ),
      );
  }
}





class ffffff extends StatelessWidget {
  const ffffff({
    Key? key, required this.isActive,
  }) : super(key: key);
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
    height:4,
    width:8,
    decoration:BoxDecoration(
      color: isActive? const Color.fromARGB(255, 25, 221, 48): Colors.grey ,
      borderRadius: const BorderRadius.all(Radius.circular(12)),
    )
    );
  }
}