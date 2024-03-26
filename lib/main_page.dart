import 'package:flutter/material.dart';
import 'package:ig_ui/pages/home_pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = const [
    HomePage(),
    const Center(
      child: Text('search'),
    ),
    const Center(
      child: Text('add'),
    ),
    const Center(
      child: Text('love'),
    ),
    const Center(
      child: Text('person'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 35,
        selectedItemColor: Colors.green,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 0 ? Icons.home : Icons.home_outlined,
              color: Colors.green,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 1 ? Icons.search : Icons.search_outlined,
              color: Colors.green,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 2 ? Icons.add_box : Icons.add_box_outlined,
              color: Colors.green,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 3
                  ? Icons.favorite
                  : Icons.favorite_outline_outlined,
              color: Colors.green,
            ),
            label: 'Link',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 4 ? Icons.person : Icons.person_outlined,
              color: Colors.green,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
