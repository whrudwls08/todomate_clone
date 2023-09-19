import 'package:flutter/material.dart';
import 'package:todomate/screens/todo_main.dart';
//import 'package:todomate/widgets/initial_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: TodoMain(),
      );
}
