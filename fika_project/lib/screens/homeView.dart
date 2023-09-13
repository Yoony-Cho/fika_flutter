import 'package:fika_project/widgets/searchBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> locations = [
    '서울',
    '부산',
    '대구',
    '인천',
    '광주',
    '대전',
    '울산',
    '기타'
  ];

  String? selectedLocation = '서울';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.black,
        leadingWidth: 200,
        leading: Row(
          children: [
            SizedBox(
              width: 12,
            ),
            DropdownButtonHideUnderline(
              // 드롭다운 버튼의 밑줄 제거
              child: DropdownButton<String>(
                value: selectedLocation,
                items: locations.map((String location) {
                  return DropdownMenuItem<String>(
                    value: location,
                    child: Text(location),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedLocation = newValue;
                  });
                },
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // 메뉴 기능 추가
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SearchBarWidget(),
          ),
        ],
      ),
    );
  }
}
