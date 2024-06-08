
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<dynamic> _showdial(BuildContext context){
  return showDialog(
      barrierDismissible: true, //바깥 영역 터치시 닫을지 여부 결정
      context: context,
      builder: (context){
        List<String> buttonLabels = ['소화전', '교차로 모퉁이', '버스 정류소', '횡단보도', '어린이 보호구역', '인도'];

        return AlertDialog(
          backgroundColor: Colors.white,
          alignment: Alignment.center,
          title: Text(
            "불법 주정차 신고 유형",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ), // 다이얼로그 제목
          content: Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(buttonLabels.length, (index){
                return Column(
                  children:  [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize: Size(300, 50)
                      ),
                      onPressed: () {
                        print('${buttonLabels[index]} 버튼 클릭됨');
                      },
                      child: Text(
                          buttonLabels[index],
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          )
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                );
              })
          ),// 다이얼로그 본문 내용

          // actions. 사용자와 상호작용할 수 있도록 하는 역할
        );
      }
  );
}