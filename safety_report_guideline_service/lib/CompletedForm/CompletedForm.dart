import 'package:flutter/material.dart';
import 'package:safety_report_guideline_service/CommonWidget/MainScaffold.dart';

class CompletedForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: '신고문 작성완료',
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '신고유형',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('횡단보도 불법주정차', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Image.network(
                        'https://via.placeholder.com/150',
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        child: Container(
                          color: Colors.black54,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              '1차 촬영물',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Stack(
                    children: [
                      Image.network(
                        'https://via.placeholder.com/150',
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        child: Container(
                          color: Colors.black54,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              '2차 촬영물',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              '발생지역',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('서울특별시 강북구 삼양로 지하 259', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text(
              '휴대전화',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('010-9411-7238', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text(
              '내용',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '횡단보도 불법주정차 신고합니다. 같은 위치에 자주 불법 주정차를 하는 차량입니다.',
              style: TextStyle(fontSize: 16),
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // 재촬영하기 버튼 누를 때 처리
                    },
                    child: Text('재촬영하기'),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // 신고하기 버튼 누를 때 처리
                    },
                    child: Text('신고하기'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}