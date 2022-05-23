import 'package:bankly_app/auth/register/view/reg_desktop.dart';
import 'package:bankly_app/auth/register/view/reg_mobile.dart';
import 'package:bankly_app/util/res.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return BanklyResp(
      mobileBody: MobileReg(),
      desktopBody: DeskTopReg(),
    );
  }
}
