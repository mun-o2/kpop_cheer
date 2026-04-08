import 'package:flutter/material.dart';

class SongPractice extends StatelessWidget {
  const SongPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('練習')),
      body: const Center(child: Text('練習画面')),
    );
  }
}
