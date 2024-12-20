import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ButtonWidget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  overlayColor: WidgetStateProperty.all(Colors.black),
                  elevation: WidgetStateProperty.all(20),
                  backgroundColor:
                      WidgetStateProperty.all(Colors.blue), // Added color
                  padding: WidgetStateProperty.all(const EdgeInsets.all(
                      16)), // Added padding for better touch target
                ),
                onPressed: () {
                  // Add your button press logic here
                },
                child: const Text(
                  'Press me',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white, // Added contrasting text color
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                          Theme.of(context).primaryColor),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)))),
                  onPressed: () {},
                  child: const Text(
                    'Press Me',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ))
            ],
          ),
        ));
  }
}
