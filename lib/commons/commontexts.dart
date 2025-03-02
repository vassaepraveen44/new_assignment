import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// CommHeadingText Widget using Rubik font
class CommonHeadingText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textalignment;
  final int maxLines;
  final TextOverflow textflow;

  const CommonHeadingText(
      {required this.text,
      this.color = Colors.black,
      this.fontSize = 24.0,
      this.fontWeight = FontWeight.bold,
      this.textalignment = TextAlign.start,
      this.maxLines = 1,
      this.textflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textalignment,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: GoogleFonts.rubik(
        textStyle: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}

// CommText Widget using Mulish font
class CommonText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textaligment;
  final int maxLines;
  const CommonText({
    required this.text,
    this.color = Colors.grey,
    this.fontSize = 16.0,
    this.maxLines = 1,
    this.fontWeight = FontWeight.normal,
    this.textaligment = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textaligment,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}

// /commonbutton
class Commonbutton extends StatelessWidget {
  final String button;
  final double horizontalpadding, verticalPadding;
  final VoidCallback? ontapped;
  final Color bgcolor, bordercolor, textclr;
  final double borderwidth;
  final FontWeight txtweight;
  final BorderRadius borderRadius;

  const Commonbutton({
    super.key,
    required this.button,
    required this.ontapped,
    required this.horizontalpadding,
    required this.verticalPadding,
    required this.bgcolor,
    required this.borderwidth,
    required this.bordercolor,
    required this.textclr,
    required this.txtweight,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalpadding, vertical: verticalPadding),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
              // side: BorderSide(width: borderwidth, color: bordercolor)
            ),
            backgroundColor: bgcolor,
            minimumSize: Size(MediaQuery.of(context).size.width, 50),
          ),
          onPressed: ontapped,
          child: Text(
            button,
            style: GoogleFonts.rubik(
              fontSize:  14,
              color: textclr,
              fontWeight: FontWeight.w400,
            ),
          )),
    );
  }
}

// CommText Widget using Mulish font
class CommonWebText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textaligment;
  final int maxLines;
  const CommonWebText({
    required this.text,
    this.color = Colors.grey,
    this.fontSize = 16.0,
    this.maxLines = 1,
    this.fontWeight = FontWeight.normal,
    this.textaligment = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textaligment,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: GoogleFonts.mulish(
        textStyle: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
