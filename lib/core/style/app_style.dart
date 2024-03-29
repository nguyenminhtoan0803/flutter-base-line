import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//define color list
const List<Color> colorList = [
  Color(0xFFF4511E),
  Color(0xFFFDD835),
  Color(0xFF7CB342),
  Color(0xFF00ACC1),
  Color(0xFF673AB7),
  Color(0xFFE53935),
  Color(0xFFD81B60),
  Color(0xFF8E24AA),
  Color(0xFF3949AB),
  Color(0xFF1E88E5),
  Color(0xFF039BE5),
  Color(0xFF00ACC1),
  Color(0xFF00897B),
  Color(0xFF43A047),
  Color(0xFF7CB342),
  Color(0xFFC0CA33),
];
const headLine1 = TextStyle(fontSize: 20, fontWeight: FontWeight.w900);

const headLine2 = TextStyle(fontSize: 18, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis);

const headLine3 = TextStyle(fontSize: 17, fontWeight: FontWeight.w700, overflow: TextOverflow.ellipsis);

const headLine4 = TextStyle(fontSize: 16, fontWeight: FontWeight.w700, overflow: TextOverflow.ellipsis);

const headLine5 = TextStyle(fontSize: 15, fontWeight: FontWeight.w700);

const headLine6 = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey, overflow: TextOverflow.ellipsis);

const focusedBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.black54, width: 2.0),
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);

const enableBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.black12, width: 1.0),
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
);

const inputBorder = OutlineInputBorder(
  borderSide:BorderSide(color: Colors.redAccent),
  borderRadius: BorderRadius.all(Radius.circular(10.0))
);

const errorBorder = OutlineInputBorder(
  borderSide: BorderSide(color: Colors.redAccent, width: 3.0),
  borderRadius: BorderRadius.all(Radius.circular(10.0))
);

const focusedErrorBorder = OutlineInputBorder(
  borderSide: BorderSide(width: 3, color: Colors.redAccent),
  borderRadius: BorderRadius.all(Radius.circular(10.0))
);

TextStyle smallText = GoogleFonts.ptSans(
  fontSize: 12,
  fontWeight: FontWeight.normal,
);

TextStyle normalText = GoogleFonts.ptSansCaption(
  fontSize: 14,
  fontWeight: FontWeight.normal,
);

TextStyle mediumText = GoogleFonts.ptSans(
  fontSize: 18,
);

TextStyle largeText = GoogleFonts.ptSans(
  fontSize: 22,
  fontWeight: FontWeight.bold,
);

TextStyle extraLargeText = GoogleFonts.ptSansCaption(
  fontSize: 35,
  fontWeight: FontWeight.bold,
);

TextStyle xxLargeText = GoogleFonts.ptSans(
  fontSize: 45,
);