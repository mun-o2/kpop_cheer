import 'package:flutter/material.dart';

class AddSongSheet extends StatelessWidget {
  const AddSongSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom + 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '曲を追加',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          TextField(decoration: InputDecoration(labelText: '曲名')),
          TextField(decoration: InputDecoration(labelText: 'アーティスト')),
          TextField(decoration: InputDecoration(labelText: '動画URL')),
          TextField(decoration: InputDecoration(labelText: '歌詞'), maxLines: 5),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('追加'),
          ),
        ],
      ),
    );
  }
}
