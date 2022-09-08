import 'package:flutter/material.dart';
import 'accounts.dart';
import 'add.dart';
import 'chat.dart';
import 'home_screen.dart';
import 'my_ads.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: BottomNavController(),
    );
  }
}

class BottomNavController extends StatefulWidget {
  BottomNavController({Key? key}) : super(key: key);

  @override
  State<BottomNavController> createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _currentIndex = 0;
  final _pages = [

      HomeScreen(),
      MyAds(),
      Add(),
      Chat(),
      Account(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              
                icon: Icon(Icons.home_max_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shop_outlined), label: 'Shop'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_circle_outline), label: 'Add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_outlined), label: 'Chat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Person'),
          ],

           selectedItemColor: Color.fromARGB(13, 4, 54, 161),
           unselectedItemColor: Color.fromARGB(0, 114, 8, 8)

          ),
          body: _pages[_currentIndex],
    );
  }
}
