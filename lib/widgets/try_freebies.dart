import 'package:bankly_app/app/app_colors.dart';
import 'package:bankly_app/app/app_strings.dart';
import 'package:bankly_app/app/f.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

tryFreebie() {
  return Builder(builder: (context) {
    var dim = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      // width: dim.width * 0.75.w,
      padding: EdgeInsets.symmetric(
        vertical: dim.height * 0.02.h,
        // horizontal: dim.width * 0.2.w,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 6,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(5.r),
        color: bannerColor,
      ),
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          text: Appstring.bannerTxt,
          style: GoogleFonts.poppins(
              fontWeight: FWt.bold, color: white, fontSize: 12.sp),
          children: [
            TextSpan(
              text: ' then\n \$20/mo. thereafter',
              style:
                  GoogleFonts.poppins(fontWeight: FWt.regular, fontSize: 12.sp),
            ),
          ],
        ),
      ),
    );
  });
}
