import 'package:flutter/material.dart';

import 'pages/home_page/home_page.dart';

void main(List<String> args) {
  runApp(const MyExpenses());
}

class MyExpenses extends StatelessWidget {
  const MyExpenses({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
