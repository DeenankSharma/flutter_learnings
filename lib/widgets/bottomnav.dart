import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/alert.dart';
import 'package:flutter_application_1/widgets/dismissible.dart';
import 'package:flutter_application_1/widgets/rowscols.dart';
import 'package:flutter_application_1/widgets/snackbar.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

int selectedIndex = 0;

// List<Widget> widgets = [Text('Home'),Text('Search'),Text('Add'),Text('Profile')];

PageController pageController = PageController();

void onTapped(int index){
  setState(() {
    selectedIndex = index;
    pageController.jumpToPage(index);
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Bottom Navigation Bar'),),
      body: PageView(
        controller: pageController,
        children: [
          AlertWidget(),
          DismissibleWidget(),
          RowsCols(),
          SnackbarWidget()
      ],),
      bottomNavigationBar: BottomNavigationBar(items: const<BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile')

      ],currentIndex: selectedIndex,
      onTap: onTapped,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,),
    );
  }
}