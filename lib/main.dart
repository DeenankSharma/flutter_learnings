import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/container_sized.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark,primaryColor: Colors.deepPurple),
      home: Container_Sized(),
      debugShowCheckedModeBanner: false,
    );
  }
}