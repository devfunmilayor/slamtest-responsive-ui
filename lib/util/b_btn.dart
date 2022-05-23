import 'package:bankly_app/app/app_colors.dart';
import 'package:bankly_app/app/f.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    Key? key,
    this.btnL,
    this.btnTap,
  }) : super(key: key);

  final String? btnL;
  final Function()? btnTap;

  @override
  Widget build(BuildContext context) {
    var dim = MediaQuery.of(context).size;
    return InkResponse(
      onTap: btnTap,
      child: Container(
        width: dim.width,
        padding: EdgeInsets.only(
            top: dim.height * 0.02.h, bottom: dim.height * 0.02.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: btnColor, borderRadius: BorderRadius.circular(5.r)),
        child: Styles.regular(
         btnL ?? '',
          fontWeight: FontWeight.w500,
          fontSize: 12.sp,
          color: white,
        ),
      ),
    );
  }
}
