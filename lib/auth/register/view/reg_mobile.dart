import 'package:bankly_app/app/app_colors.dart';
import 'package:bankly_app/app/app_strings.dart';
import 'package:bankly_app/app/f.dart';
import 'package:bankly_app/app/s.dart';
import 'package:bankly_app/gen/assets.gen.dart';
import 'package:bankly_app/widgets/re_useable_form.dart';
import 'package:bankly_app/widgets/try_freebies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MobileReg extends StatelessWidget {
  const MobileReg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dim = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          body: Stack(
        children: [
          Container(
            height: dim.height,
            width: dim.width,
            decoration: BoxDecoration(
                color: appBgcolor,
                image: DecorationImage(
                    image: AssetImage(Assets.fPng.bgIntroMobile.path))),
          ),
          Container(
            margin: EdgeInsets.only(
                top: dim.height * 0.06.h,
                bottom: dim.height * 0.03.h,
                left: dim.width * 0.08.w,
                right: dim.width * 0.08.w),
            height: dim.height,
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Styles.regular(Appstring.headerI,
                      color: white, fontWeight: FWt.bold, fontSize: 23.sp),
                  VS(
                    height: 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: dim.width * 0.02.w,
                        right: dim.width * 0.02.w,
                        bottom: dim.height * 0.06.h),
                    child: Styles.regular(
                      Appstring.headerII,
                      align: TextAlign.center,
                      fontSize: 12.sp,
                      color: white,
                      fontWeight: FWt.semiBold,
                    ),
                  ),
                  tryFreebie(),
                  registerForm()
                ],
              ),
            ),
          )
        ],
      ));
    });
  }
}
