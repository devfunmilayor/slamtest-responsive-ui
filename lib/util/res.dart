// ignore_for_file: use_key_in_widget_constructors

import 'package:bankly_app/util/constants.dart';
import 'package:flutter/material.dart';

class BanklyResp extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const BanklyResp({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}