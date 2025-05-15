import 'package:flutter/material.dart';
/*
  * Custom widget
    : class로 만듬. class 이름은 첫글자 대문자로
    - 재사용이 많은 UI들
    - 큰 페이지들

    > 문제는 state관리가 어려워짐

    * 변수로 사용해도 됨
      : 고정적이고 변함이 없는 것들은 변수에 넣어도 됨.
 */
void main() {
  runApp(const MyApp());
}

var ProductVar = SizedBox(
  child: Text('dkdkdkdkdkkdk'),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black26,),
        body: ProductVar
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text('HELLO'),
    );
  }
}

