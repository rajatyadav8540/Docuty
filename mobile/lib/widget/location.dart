
import 'package:doc2/pages/start.dart';
import 'package:flutter/material.dart';

class MySearchDelegate extends SearchDelegate {
   List<String> searchResult =[
     "Delhi","ghaziabad","punjab",
  ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
    onPressed: () => close(context,null),
     icon: const Icon(Icons.arrow_back_ios_new));

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
    onPressed: () {
      if (query.isEmpty) {
        close(context,null);
      } else {
         query= "";
      }
     
    },
     icon: const Icon(Icons.close_sharp))
  ];

  @override
  Widget buildResults(BuildContext context) =>
   startpage();
  
     /*Text(query,
    style:const TextStyle(fontSize: 64,
    fontWeight:FontWeight.bold,
    ));*/
  

  @override
  Widget buildSuggestions(BuildContext context) {
   List<String> suggestions = searchResult.where((searchResult) {
    final result = searchResult.toLowerCase();
     final input = query.toLowerCase();

     return result.contains(input);
   } ).toList();
   return ListView.builder(
    itemCount: suggestions.length,
    itemBuilder:((context, index) {
      final suggestion =suggestions[index];
      return ListTile(
        title:Text(suggestion),
        onTap: () {
          query =suggestion;
          showResults(context);
        }
      
      );
    }) );
  }

}
