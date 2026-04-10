import 'package:flutter/material.dart';
import 'package:kpop_cheer/tabbar.dart';
import 'package:kpop_cheer/addSong.dart';
import 'package:google_fonts/google_fonts.dart';

// 色の定義
class AppColors {
  static const primary = Color(0xFF68C85C); // 緑
  static const accent = Color(0xFFFFC801); // 黄色
  static const softPink = Color.fromARGB(255, 255, 247, 250); // ピンク

  static const textPrimary = Color(0xFF333333); // 黒系
  static const background = Colors.white; // 白系
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          primary: AppColors.primary,
          secondary: AppColors.accent,
        ),
        textTheme: GoogleFonts.zenKakuGothicNewTextTheme(
          const TextTheme(
            bodyMedium: TextStyle(color: AppColors.textPrimary, fontSize: 16),
            titleLarge: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.background,
          foregroundColor: AppColors.textPrimary,
          elevation: 0,
        ),
      ),
      home: MainTabScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => AddSongSheet(),
            );
          },
          child: Text('曲を追加'),
        ),
      ),
    );
  }
}
