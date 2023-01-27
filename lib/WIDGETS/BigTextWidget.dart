import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class BigTextWidget extends StatelessWidget {
  BigTextWidget({
    super.key,
    required this.fontSize,
    required this.text,
    required this.color,
    required this.textOverflow,
    required this.textAlign,
    required this.fontWeight,
  });
  String text;
  double fontSize;
  TextAlign textAlign;
  FontWeight fontWeight;
  TextOverflow textOverflow;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      textAlign: textAlign,
      style: GoogleFonts.alice(
        fontWeight: fontWeight,
        wordSpacing: 2,
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
