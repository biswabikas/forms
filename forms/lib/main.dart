import 'package:flutter/material.dart';
import 'package:forms/widgets/grocery_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Groceries',
        theme: ThemeData.dark().copyWith(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
                seedColor: Color.fromARGB(255, 147, 229, 250),
                surface: Color.fromARGB(255, 42, 51, 59)),
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Color.fromARGB(255, 50, 58, 60)),
        home: const GroceryList());
  }
}
