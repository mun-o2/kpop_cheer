import 'package:flutter/material.dart';

class SongPractice extends StatelessWidget {
  const SongPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('練習')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // 動画リスト
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text('動画', style: const TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 16),

            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(50),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(45),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: SingleChildScrollView(
                  child: const Text('''
[歌詞ダミー]

You got me looking for attention
You got me looking for attention
가끔은 정말 헷갈리지만
분명한 건
Got me looking for attention

널 우연히 마주친 척할래
못 본 척 지나갈래
매일매일이 정말 재밌어
조금씩 다가갈래

サビの歌詞がここに入ります
まだダミーなので適当に長くしています
スクロールできるかを見るための文章です

1行ずつ見やすく表示できるようにしたい
あとで掛け声もどう見せるか考える
今はとりあえず歌詞だけ入れる
こんな感じで長くしておけば動作確認できる
''', style: TextStyle(fontSize: 18, height: 1.8)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
