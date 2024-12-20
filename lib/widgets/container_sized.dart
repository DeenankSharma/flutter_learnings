import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Container and Sized Box'),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 20, spreadRadius: 5, color: Colors.black)
                ]),
            height: 50,
            width: 50,
            child: const Text(
              'hello',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ));
  }
}
