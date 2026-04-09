import 'package:flutter/material.dart';
import 'package:kpop_cheer/main.dart';
import 'package:kpop_cheer/songList.dart';

class MainTabScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabbarState();
}

class _TabbarState extends State<MainTabScreen> {
  int _currentIndex = 0;
  final _pageWidgets = [MyHomePage(title: 'Home'), SongList()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kpop Cheer')),
      body: _pageWidgets.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Songs'),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
