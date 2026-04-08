import 'package:flutter/material.dart';
import 'package:kpop_cheer/song_practice.dart';

class SongDetail extends StatelessWidget {
  final String title;
  final String artist;

  const SongDetail({super.key, required this.title, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('曲詳細')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('$title / $artist', style: const TextStyle(fontSize: 20)),

            const SizedBox(height: 20),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // 画面遷移 songDetail->songPractice
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SongPractice()),
                  );
                },
                child: Text('曲練習へ'),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
