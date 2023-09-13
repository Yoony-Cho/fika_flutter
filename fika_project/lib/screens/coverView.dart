import 'package:fika_project/screens/homeView.dart';
import 'package:flutter/material.dart';

class CoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 배경 이미지
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/cover_page.png'), // 이미지 파일 경로
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // 버튼
                ElevatedButton(
                  onPressed: () {
                    // 홈페이지로 이동
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFC8B475), // 배경색을 노란색으로 설정
                    foregroundColor: Color(0xFF151515), // 폰트 색상을 하얀색으로 설정
                  ),
                  child: Text('진행하기'),
                ),
                SizedBox(
                  height: 150,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
