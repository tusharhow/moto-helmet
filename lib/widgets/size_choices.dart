import 'package:flutter/material.dart';

class SizeChoices extends StatelessWidget {
  const SizeChoices({
    Key? key,
    @required this.size,
  }) : super(key: key);
  final size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          border: Border.all(color: Colors.black26)),
      child: Center(
        child: Text(size),
      ),
    );
  }
}
