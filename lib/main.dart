import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbti_test/views/mbti_info_view.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MBTI Personality Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MbtiInfoView(),
    );
  }
}
