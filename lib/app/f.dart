// ignore_for_file: unnecessary_null_in_if_null_operators

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FWt {
  FWt();

  static FontWeight extraLight = FontWeight.w200;
  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight semiBold = FontWeight.w500;
  static FontWeight mediumBold = FontWeight.w600;

  static FontWeight bold = FontWeight.w700;
  static FontWeight extraBold = FontWeight.w800;
  static FontWeight text = FontWeight.w900;
}

class Styles {
  static Text small(
    String text, {
    double? fontSize,
    Color? color,
    TextAlign? align,
    double? height,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    bool strike = false,
    int? lines,
    TextOverflow? overflow,
    bool underline = false,
  }) {
    return Text(
      text,
      textAlign: align ?? TextAlign.left,
      maxLines: lines,
      overflow: overflow,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? 9.2.sp,
        fontWeight: fontWeight ?? FWt.regular,
        color: color,
        height: height,
        fontStyle: fontStyle ?? null,
        decoration: underline
            ? TextDecoration.underline
            : strike
                ? TextDecoration.lineThrough
                : TextDecoration.none,
      ),
    );
  }

  static Text regular(
    String text, {
    double? fontSize,
    Color? color,
    TextAlign? align,
    double? height,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    bool strike = false,
    int? lines,
    TextOverflow? overflow,
    bool underline = false,
  }) {
    return Text(
      text,
      textAlign: align ?? TextAlign.left,
      maxLines: lines,
      overflow: overflow,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? 11.5.sp,
        fontWeight: fontWeight ?? FWt.regular,
        color: color,
        height: height,
        fontStyle: fontStyle ?? null,
        decoration: underline
            ? TextDecoration.underline
            : strike
                ? TextDecoration.lineThrough
                : TextDecoration.none,
      ),
    );
  }

  static TextSpan spanRegular(
    String text, {
    double? fontSize,
    Color? color,
    TextAlign? align,
    double? height,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    bool strike = false,
    int? lines,
    listedDatas,
    TextOverflow? overflow,
    bool underline = false,
  }) {
    return TextSpan(
      text: text,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? 11.5.sp,
        fontWeight: fontWeight ?? FWt.regular,
        color: color,
        height: height,
        fontStyle: fontStyle ?? null,
        decoration: underline
            ? TextDecoration.underline
            : strike
                ? TextDecoration.lineThrough
                : TextDecoration.none,
      ),
      children: listedDatas,
    );
  }

  static Text medium(
    String text, {
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    TextAlign? align,
    double? height,
    bool strike = false,
    int? lines,
    TextOverflow? overflow,
    bool underline = false,
  }) {
    return Text(
      text,
      textAlign: align ?? TextAlign.left,
      maxLines: lines,
      overflow: overflow,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? 11.5.sp,
        fontWeight: fontWeight ?? FWt.mediumBold,
        color: color,
        height: height,
        decoration: underline
            ? TextDecoration.underline
            : strike
                ? TextDecoration.lineThrough
                : TextDecoration.none,
      ),
    );
  }

  static Text semiBold(
    String text, {
    double? fontSize,
    Color? color,
    TextOverflow? overflow,
    TextAlign? align,
    double? height,
    bool strike = false,
    bool underline = false,
    int? lines,
  }) {
    return Text(
      text,
      textAlign: align ?? TextAlign.left,
      maxLines: lines,
      overflow: overflow,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? 12.5.sp,
        fontWeight: FWt.semiBold,
        color: color,
        height: height,
        decorationThickness: 2,
        // decorationColor: activeGreen,
        decoration: underline
            ? TextDecoration.underline
            : strike
                ? TextDecoration.lineThrough
                : TextDecoration.none,
      ),
    );
  }

  static TextSpan spanBold(
    String text, {
    double? fontSize,
    Color? color,
    TextAlign? align,
    bool strike = false,
    int? lines,
    TextOverflow? overflow,
    double? height,
  }) {
    return TextSpan(
      text: text,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? 18.0,
        fontWeight: FWt.bold,
        color: color,
        height: height,
        decoration: strike ? TextDecoration.lineThrough : TextDecoration.none,
      ),
    );
  }

  static Text bold(
    String text, {
    double? fontSize,
    Color? color,
    TextAlign? align,
    bool strike = false,
    int? lines,
    TextOverflow? overflow,
    double? height,
  }) {
    return Text(
      text,
      textAlign: align ?? TextAlign.left,
      maxLines: lines,
      overflow: overflow,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? 18.0,
        fontWeight: FWt.bold,
        color: color,
        height: height,
        decoration: strike ? TextDecoration.lineThrough : TextDecoration.none,
      ),
    );
  }

  static Text extraBold(
    String text, {
    double? fontSize,
    Color? color,
    TextAlign? align,
    int? lines,
    bool strike = false,
    TextOverflow? overflow,
  }) {
    return Text(
      text,
      textAlign: align ?? TextAlign.left,
      maxLines: lines,
      overflow: overflow,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? 17.0.sp,
        fontWeight: FWt.extraBold,
        color: color,
        decoration: strike ? TextDecoration.lineThrough : TextDecoration.none,
      ),
    );
  }
}
