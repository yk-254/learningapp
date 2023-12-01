import 'package:flutter/material.dart';

class SushText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  const SushText(this.text,
      {super.key,
      this.style,
      required this.textAlign,
      required this.textDirection});

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      text,
      style: style,
      textAlign: textAlign,
      textDirection: textDirection,
    );
  }
}

class SushDoubleText extends StatelessWidget {
  final String k;
  final String v;
  final Color? keyColor;
  final Color? valueColor;
  SushDoubleText(
    this.k,
    this.v, {
    super.key,
    this.keyColor,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SelectableText(
          k,
          style: TextStyle(
            color: keyColor ?? Colors.grey,
            fontSize: 12,
          ),
        ),
        SizedBox(width: 10),
        SelectableText(
          v,
          style: TextStyle(
            color: valueColor ?? Colors.grey.shade800,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
