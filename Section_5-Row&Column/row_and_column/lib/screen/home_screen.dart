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
          // height: MediaQuery.of(context).size.height,
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
            // start - 시작
            // end - 끝
            // center - 중앙
            // stretch - 하드코딩한 width와 상관 없이 최대한으로 늘린다.
            crossAxisAlignment: CrossAxisAlignment.end,
            // MainAxisSize - 주축 크기
            // max - 최대
            // min - 최소
            mainAxisSize: MainAxisSize.max,
            children: [
              // Expanded / Flexible (Column이나 Row에서만 사용 가능)
              // MainAxisSize와 유사함
              // Expanded - 남아있는 공간 최대 사용
              Expanded(
                // flex는 Expanded의 property로 얼마나 공간을 차지할지 비율을 정할 수 있다. (defualt == 1)
                flex: 2,
                child: Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              // Expanded - 남아있는 공간 중 최소 사용
              Flexible(
                // flex는 Flexible property로 얼마나 공간을 차지할지 비율을 정할 수 있다. (defualt == 1)
                flex: 2,
                child: Container(
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                ),
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
