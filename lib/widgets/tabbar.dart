import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Whatsapp'),
            bottom: const TabBar(tabs: [
              Tab(
                text: 'Chats',
                icon: Icon(Icons.chat),
              ),
              Tab(
                text: 'Chats',
                icon: Icon(Icons.chat),
              ),
              Tab(
                text: 'Chats',
                icon: Icon(Icons.chat),
              )
            ]),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Center(
                  child: Text('CHATS'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('CHATS'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('CHATS'),
                ),
              )
            ],
          ),
        ));
  }
}
