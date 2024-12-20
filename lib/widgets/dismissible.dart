import 'package:flutter/material.dart';


class DismissibleWidget extends StatelessWidget {
  DismissibleWidget({super.key});

  List<String> fruits = ['apple','grapes','banana','lichi','cherry']; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dismissible Widget'),),
      body: ListView.builder(itemBuilder:
      (context,index){
        final fruit = fruits[index];
        return Dismissible(
          onDismissed:(direction) {
            if(direction == DismissDirection.startToEnd){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.red,content: Text(fruits[index])));
            }
            else{
               ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.green,content: Text(fruits[index])));
            }
          },
          key: Key(fruit), 
          background: Container(color: Colors.red,),
          secondaryBackground: Container(color: Colors.green,),
          child:  Card(child:ListTile(title: Text(fruits[index]))));
      }
       ,itemCount: fruits.length,),
    );
  }
}