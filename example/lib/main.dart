import 'package:flutter/material.dart';
import 'package:nice_wrappable_tags/nice_wrappable_tags.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nice_wrappable_tags',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static const List<String> tags = [
    'developer',
    'ios',
    'flutter',
    'android',
    'React Native',
    'java'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: NiceWrappableTags(
          onTap: (index) {
            print('${index} tapped');
          },
          title: tags,
          tagBackgroundColor: Colors.yellow,
          boxDecoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
