import 'package:book_app/view/library.dart';
import 'package:book_app/view/myBook.dart';
import 'package:book_app/widget/bottomNavigation.dart';
import 'package:flutter/material.dart';
import 'view/my_homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(fontFamily: 'Urbanist'),
        home: const MyBottomNavigationBar());
  }
}
