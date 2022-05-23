import 'package:bankly_app/app/app_colors.dart';
import 'package:bankly_app/app/app_strings.dart';
import 'package:bankly_app/util/b_btn.dart';
import 'package:bankly_app/util/b_form.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

registerForm(
    {TextEditingController? fname,
    TextEditingController? lname,
    TextEditingController? email,
    TextEditingController? password}) {
  return Builder(builder: (context) {
    var dim = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        top: dim.height * 0.04.h,
        bottom: dim.height * 0.04.h,
      ),
      padding: EdgeInsets.only(
        left: dim.width > 600 ? dim.width * 0.01.w : dim.width * 0.05.w,
        right: dim.width > 600 ? dim.width * 0.01.w : dim.width * 0.05.w,
        top: dim.height * 0.04.h,
        bottom: dim.height > 600 ? dim.height * 0.02.h : dim.height * 0.05.h,
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          spreadRadius: 0,
          blurRadius: 6,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          AppForm(
            hintText: Appstring.fname,
            controller: fname,
          ),
          AppForm(
            hintText: Appstring.lname,
            controller: lname,
          ),
          AppForm(
            hintText: Appstring.email,
            controller: email,
          ),
          AppForm(
            hintText: Appstring.password,
            controller: password,
          ),
          CustomBtn(
            btnL: Appstring.btnL.toUpperCase(),
            btnTap: () {
              if (kDebugMode) {
                print('objectpress');
              }
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 12.h,
              left: dim.width > 600 ? dim.width * 0.0.w : dim.width * 0.05.w,
              right: dim.width > 600 ? dim.width * 0.0.w : dim.width * 0.05.w,
            ),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: Appstring.bottomL,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    color: black,
                    fontSize: 9.5.sp),
                children: [
                  TextSpan(
                    text: Appstring.bottomLI,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 9.5.sp,
                        color: appBgcolor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  });
}
