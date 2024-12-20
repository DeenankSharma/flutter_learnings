import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(children: [
            DrawerHeader(
              child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(0),
              child: Row(
                children: [
                  CircleAvatar(radius: 40,
                  backgroundImage: NetworkImage(''), // url here
                  )
                ],
              ),
            )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My Files'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My Files'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My Files'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My Files'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My Files'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('My Files'),
            ),
          ]),
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer Widget'),
      ),
      body: Container(
        child: Center(
          child: Text('Hey There'),
        ),
      ),
    );
  }
}
