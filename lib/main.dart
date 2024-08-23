import 'package:flutter/material.dart';

import 'Chats.dart';
import 'Calls.dart';
import 'Updates.dart';
import 'Communities.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Chats(),
    const Updates(),
    const Communities(),
    const Calls(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: _pages[_selectedIndex],
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding:
                    EdgeInsets.only(bottom: 5.0), // Add spacing below the icon
                child: Icon(Icons.chat),
              ),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding:
                    EdgeInsets.only(bottom: 5.0), // Add spacing below the icon
                child: Icon(Icons.update),
              ),
              label: 'Updates',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding:
                    EdgeInsets.only(bottom: 5.0), // Add spacing below the icon
                child: Icon(Icons.people),
              ),
              label: 'Communities',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding:
                    EdgeInsets.only(bottom: 5.0), // Add spacing below the icon
                child: Icon(Icons.call),
              ),
              label: 'Calls',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          onTap: _onItemTapped,
        ),
      );
  }
}
