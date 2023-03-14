import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// default margin

double defaultMargin = 24.0;
double defaultRadius = 17.0;

const Color kprimaryColor = Color(0xff5C40CC);
const Color kBlackCOlor = Color(0xff1F1449);
const Color kWhiteColor = Color(0xffFFFFFF);
const Color kGreyColor = Color(0xff9698A9);
const Color kGreenColor = Color(0xff0EC3AE);
const Color kRedColor = Color(0xffEB70A5);
const Color kBgColor = Color(0xffFAFAFA);
const Color kInactiveColor = Color(0xffDBD7EC);
const Color kTransparentColor = Colors.transparent;
const Color kUnavailableColor = Color(0xffEBECF1);
const Color kAvailableColor = Color(0xffEBECF1);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackCOlor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyColor,
);

TextStyle greenTextStyle = GoogleFonts.poppins(
  color: kGreenColor,
);

TextStyle redTextStyle = GoogleFonts.poppins(
  color: kRedColor,
);

TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: kprimaryColor,
);

// font Weight
FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
