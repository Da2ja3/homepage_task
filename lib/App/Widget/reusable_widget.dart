import 'package:flutter/material.dart';


class customTextWidget extends StatelessWidget {
  const customTextWidget({
    Key? key,
    required this.text,
    this.size, this.weight,
    this.color, this.align,
  }) : super(key: key);

  final String text;
  final double? size;
  final FontWeight? weight;
  final Color? color;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign: align, style: TextStyle(color:
    color, fontSize: size, fontWeight: weight),);
  }
}