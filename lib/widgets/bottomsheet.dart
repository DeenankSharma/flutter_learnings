import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomSheet Widget'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show bottom sheet'),
          onPressed: () {
            showModalBottomSheet(
              enableDrag: false,
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Karan'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Karan'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Karan'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Karan'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Karan'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Karan'),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
