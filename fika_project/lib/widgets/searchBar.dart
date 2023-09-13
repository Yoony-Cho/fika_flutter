import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true, // 백그라운드를 채울지 여부를 설정합니다.
        fillColor: Color(0xFFF8F8F8), // 백그라운드 컬러를 설정합니다.
        hintText: '검색어를 입력하세요',
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(),
      ),
      onSubmitted: (value) {
        // 검색어를 입력하고 엔터 키를 눌렀을 때 검색 액션을 추가하세요.
        // 여기에 검색 기능을 구현할 수 있습니다.
      },
    );
  }
}
