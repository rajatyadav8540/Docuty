import 'package:doc2/widget/numorphic.dart';
import 'package:flutter/material.dart';

class DocCard extends StatelessWidget {
  //final String name;
  DocCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, top: 85),
      child: Column(children: [
        Text(
          "Name",
          style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.blueGrey,
            fontSize: 17,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Wrap(
              children: List.generate(5, (index) {
            return Icon(
              Icons.star,
              color: Color.fromARGB(255, 25, 221, 48),
            );
          })),
        ),
      ]),
    );
  }
}
