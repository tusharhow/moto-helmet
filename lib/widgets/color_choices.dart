import 'package:flutter/material.dart';

class ColorChoices extends StatelessWidget {
  const ColorChoices({
    Key? key,
    @required this.clr,
  }) : super(key: key);
  final clr;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 60,
      decoration:
          BoxDecoration(color: clr, borderRadius: BorderRadius.circular(15)),
    );
  }
}
