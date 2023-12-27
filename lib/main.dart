import 'package:flutter/material.dart';

// アプリ起動
void main() {
  runApp(MyApp());
}

// アプリの設定
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // シミュレーターのデバッグバナーを非表示
      title: 'IF THEN CARD', // アプリのタイトル
      home: TopPage(), // ホーム画面の設定
    );
  }
}

// トップ画面(ルール一覧)
class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CARD LIST'), // ページ名
        actions: [
          Tooltip(message: 'アイコンボタンをホバーしたときに表示されるテキスト'),
          IconButton( //右上の+ボタン
            icon: Icon(Icons.add),
            onPressed: () => ('ルール追加画面に遷移するよ'),
          )
        ],
      ),
      body: Center(child: Text('ルール一覧を表示するよ')),
      floatingActionButton: FloatingActionButton( // 右上の+ボタン
        onPressed: () => print('ルール追加画面に遷移するよ'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
