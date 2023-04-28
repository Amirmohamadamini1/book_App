import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myd extends StatefulWidget {
  const Myd({
    Key? key,
  }) : super(key: key);

  @override
  State<Myd> createState() => _MydPageState();
}

class _MydPageState extends State<Myd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.question_answer),
      ),
    );
  }
}
