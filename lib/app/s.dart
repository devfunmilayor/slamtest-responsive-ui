import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VS extends StatelessWidget {
  const VS({
    Key? key,
    this.height,
    this.child,
  }) : super(key: key);

  final double? height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height*height!.h,
    );
  }
}

class HS extends StatelessWidget {
  const HS({
    Key? key,
    this.width,
    this.child,
  }) : super(key: key);

  final double? width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*width!.w,
    );
  }
}
