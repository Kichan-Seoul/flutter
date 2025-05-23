import 'package:flutter/material.dart';
/*
  * Flexible() : flex와 비슷
    : 전체에서 ?% 자리차지 같은것을 사용할 때 편리
      (Row(), Column()과 같이 사용)
  * Expanded() : Flexible과 유사
    : 나머지 부분을 다 자리차지
 */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFf3edf7),
            title: Text('강남역'),
            actions: [
              Icon(Icons.search),
              Icon(Icons.menu),
              Icon(Icons.notification_add)
            ],
          ), 
          /*body: Column(
            children: [
              Flexible(child: Container(color: Colors.amber,), flex: 5,),
              Flexible(child: Container(color: Colors.black26,), flex: 7,),
              Flexible(child: Container(color: Colors.purpleAccent), flex: 7,)
            ],
          )*/
        //
          body: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(child:
                  Image.asset(
                    'assets/images/Aston Martin DB11 1.jpg', width: 190),
                  flex: 3,
                ),

                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 9,
                    children: [
                      Text('고양이 집사 구함', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                      Text('개냥이, 활발한 성격'),
                      Text('금액은 만나서 결정', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
                      SizedBox(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.favorite_border),
                            Text('4')
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}