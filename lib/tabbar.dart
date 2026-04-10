import 'package:flutter/material.dart';
import 'package:kpop_cheer/main.dart';
import 'package:kpop_cheer/songList.dart';

// 色の定義
class AppColors {
  static const primary = Color(0xFF68C85C); // 緑
  static const accent = Color(0xFFFFC801); // 黄色
  static const softPink = Color.fromARGB(255, 255, 247, 250); // ピンク

  static const textPrimary = Color(0xFF333333); // 黒系
  static const background = Colors.white; // 白系
}

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
      appBar: AppBar(
        title: Text('Kpop Cheer'),
        backgroundColor: AppColors.primary.withOpacity(0.2),
        foregroundColor: AppColors.primary,
        elevation: 0,
      ),
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
