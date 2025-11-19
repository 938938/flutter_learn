import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
} // runApp : 앱 시작 코드

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // 자동완성은 ctrl+space 누르면 목록 뜸(맥의 경우 자동단축키를 바꿔야 함)
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 실제로 앱을 구현하는 곳
      // home: Text('Hello World!') // 글자 위젯
      // home: Icon(Icons.star) // 아이콘 위젯
      // home: Image.asset('123.png') // 이미지 위젯, 이미지보관용 assets 폴더 만든 후 이미지 첨부하기
      // home: Center( // 기준점을 중앙으로 설정
      //   child: Container( width: 10, height: 10, color: Colors.orange,) // 네모박스 위젯. Flutter의 사이즈 단위는 LP,
      // )
      // home:Scaffold( // 상중하로 나눠주는 위젯
      //   appBar: AppBar(title: Text('이렇게 해요?'),), // 상단에 들어갈 위젯
      //   body: Container(child: Text('중간 텍스트')), // 중간에 들어갈 위젯
      //   bottomNavigationBar: BottomAppBar(child: Text('하단 텍스트'),), //핟나에 들어갈 위젯
      // )
      // home: Scaffold(
      //   body: Row( // 위젯 가로 배치(세로 배치는 Column
      //     mainAxisAlignment: MainAxisAlignment.center, // 요소 가로 정렬(가운데), flex와 유사
      //     crossAxisAlignment: CrossAxisAlignment.center, // 세로 정렬
      //     children: [Icon(Icons.star), Icon(Icons.heart_broken)],
      //   ),
      // ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     backgroundColor: Colors.blue,
      //     title: Text('앱', style: TextStyle(color: Colors.white),),
      //   ),
      //   body: Text('안녕'),
      //   bottomNavigationBar: BottomAppBar(child: SizedBox(
      //     // width, height, child만 필요한 박스는 SizedBox(Container보다 가벼움)
      //     height: 100,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [Icon(Icons.phone), Icon(Icons.message), Icon(Icons.contact_page)],
      //     ),
      //   )),
      // ),
      // home: Scaffold(
      //   appBar: AppBar(title: Text('제목!!')),
      //   body: Align(
      //     alignment: Alignment.bottomCenter, // 박스 정렬
      //     child: Container( // 가로로 꽉 채우고 싶을 땐 double.infinity (부모박스를 넘지 않음)
      //       width: double.infinity, height: 150, // color: Colors.blue, decoration 속성이 있으면 Colors도 decoration 안에 넣어야 함
      //       margin: EdgeInsets.fromLTRB(0, 30, 0, 0), // 위쪽에만 마진 30
      //       padding: EdgeInsets.all(20),
      //       decoration: BoxDecoration(
      //         color: Colors.blue,
      //         border: Border.all(color: Colors.red)
      //       ),
      //       child: Text('내용!'),
      //     ),
      //   ),
      // ),
      // home: Scaffold(
      //   appBar:AppBar(
      //     title: Text('제목'),
      //     leading: Icon(Icons.star), // 주로 로고 들어가는 곳에 있는 아이콘(햄버거메뉴 등)
      //     actions: [Icon(Icons.abc),Icon(Icons.access_alarm)],
      //   ),
      //   body: SizedBox(
      //     // child: Text('Hello world!',
      //     //   style: TextStyle(color: Color(0xffff0000), fontSize: 30, fontWeight: FontWeight.w700), // Colors.- 말고 색상코드 사용할 때. 0xff색상코드
      //     // ),
      //     // child: Icon(Icons.star, color: Colors.blue,),
      //     child: ElevatedButton(onPressed: (){}, child: Text('글자'), style: ButtonStyle(),), // TextButton, IconButton, ElevatedButton
      //   ),
      // ),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            title: TextButton(onPressed: (){}, child: Row(
              children: [
                Text('금호동3가', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
                Icon(Icons.keyboard_arrow_down, size: 30,)
              ],
            ),),
            actions: [Icon(Icons.search, size:40), Icon(Icons.menu, size: 40,), Icon(Icons.notifications, size: 40,)],
          ),
        ),
        body: Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: double.infinity,
            height: 200,
            child: Row(
              children: [
                Container(
                  child:
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                        'assets/123.png',width: 150,
                        height: 150,
                        fit: BoxFit.cover
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                ),
                Flexible(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('캐논 DSLR 100D (단렌즈, 충전기 16기가 SD포함', style: TextStyle(fontSize: 20),),
                    Text('성동구 행당동 끝올 10분 전', style: TextStyle(color: Colors.grey),),
                    Text('210,000원', style: TextStyle(fontWeight: FontWeight.w700),),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.favorite_border, color: Colors.grey,),
                          Text('4'),
                        ],
                      ),
                    )
                  ],
                ))
              ],
            ),
          ),
        )
      ),
    );
  }
}
