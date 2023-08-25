import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          // MedeiaQuery.of로 size를 가져올 수 있다.
          height: MediaQuery.of(context).size.height,
          child: Row(
            // MainAxisAlignment: 주축 정렬
            // start - 시작
            // end - 끝
            // center - 중앙
            // spaceBetween - 위젯과 위젯의 사이가 동일하게 배치된다.
            // spaceEvenly - 위젯을 같은 간격으로 배치하지만 끝과 끝에도 위젯이 아닌 빈 간격으로 시작한다.
            // spaceAround - spaceEvenly + 끝과 끝의 간격은 1/2
            mainAxisAlignment: MainAxisAlignment.start,
            // CrossAxisAlignment - 반대축 정렬
            crossAxisAlignment: CrossAxisAlignment.end,
            // start - 시작
            // end - 끝
            // center - 중앙
            // stretch - 하드코딩한 width와 상관 없이 최대한으로 늘린다.
            children: [
              Container(
                color: Colors.red,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.orange,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.blue,
                width: 50.0,
                height: 50.0,
              ),
              Container(
                color: Colors.green,
                width: 50.0,
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
