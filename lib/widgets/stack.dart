import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              Positioned(
                child: Container(
                  width: 90,
                  height: 90,
                  color: Colors.green,
                ),
              ),
              Positioned(
                child: Container(
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
