import 'package:flutter/material.dart';
import 'package:kpop_cheer/song_practice.dart';

class SongList extends StatefulWidget {
  const SongList({super.key});

  @override
  State<SongList> createState() => _SongListState();
}

class _SongListState extends State<SongList> {
  //TODO: 曲のリストを実際のデータに置き換える
  final List<Map<String, String>> songs = [
    {'title': 'Dynamite', 'artist': 'BTS'},
    {'title': 'How You Like That', 'artist': 'BLACKPINK'},
    {'title': 'DDU-DU DDU-DU', 'artist': 'BLACKPINK'},
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('曲リスト')),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          final song = songs[index];

          return InkWell(
            onTap: () async {
              setState(() {
                selectedIndex = index;
              });
              await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SongPractice()),
              );
              setState(() {
                selectedIndex = -1;
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? Color.fromARGB(255, 255, 231, 239)
                    : Color.fromARGB(255, 253, 246, 248),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.music_note,
                    size: 20,
                    color: Color(0xFFFFC801),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          song['title']!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          song['artist']!,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.chevron_right),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
