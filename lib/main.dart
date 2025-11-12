import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
} // runApp : 앱 시작 코드

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 실제로 앱을 구현하는 곳
      // home: Text('Hello World!') // 글자 위젯
      // home: Icon(Icons.star) // 아이콘 위젯
      // home: Image.asset('123.png') // 이미지 위젯, 이미지보관용 assets 폴더 만든 후 이미지 첨부하기
      home: Center( // 기준점을 중앙으로 설정
        child: Container( width: 10, height: 10, color: Colors.blue,) // 네모박스 위젯. Flutter의 사이즈 단위는 LP,
      )
    );
  }
}
