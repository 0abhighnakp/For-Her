import 'package:flutter/material.dart';
import 'package:page/signup.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'For Her';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}
