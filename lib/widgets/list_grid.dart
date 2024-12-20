import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {

  List<String> fruits = ['Orange','Apple','Banana'];
  Map fruits_person = {
    'fruits':['Orange','Apple','Banana'],
    'names':['Karan','Gaurav','Deenank']
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List and Grid'),
        backgroundColor: Colors.red,
        elevation: 8,
      ),
      // body: Container(
      //   child: ListView.builder(itemBuilder:
      //     (context,index){
      //       return Card(child: 
      //       ListTile(
      //         onTap:(){ print((fruits_person['fruits'][index]));},
      //         leading: Icon(Icons.person),
      //         title: Text(fruits_person['fruits'][index]),
      //         subtitle: Text(fruits_person['names'][index]),
      //       ),);
      //     }
      //    ,itemCount: fruits.length,)
      // ),
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5),

      children: [
        Card(child: Text(''),)
      ],),
    );
  }
}