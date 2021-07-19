import 'package:flutter/material.dart';

class CategorieItems extends StatelessWidget {
  const CategorieItems({Key? key, @required this.text}) : super(key: key);

  final text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 15),
    );
  }
}
