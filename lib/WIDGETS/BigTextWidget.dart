import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class BigTextWidget extends StatelessWidget {
  BigTextWidget({
    super.key,
    required this.fontSize,
    required this.text,
    required this.color,
    required this.textOverflow,
    required this.fontWeight,
  });
  String text;
  double fontSize;
  FontWeight fontWeight;
  TextOverflow textOverflow;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      style: GoogleFonts.alice(
        fontWeight: fontWeight,
        wordSpacing: 2,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
