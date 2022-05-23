import 'package:bankly_app/app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppForm extends StatefulWidget {
  final String? hintText;
  final TextStyle? customTextHintStyle;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final TextInputType? inputType;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onComplete;
  final ValueChanged<String>? onEditing;
  final ValueChanged<String>? onSubmitted;
  final bool? isEnabled;
  final Widget? suffixIcon;
  final String? labelText;
  final String? text;
  final int? maxLen, maxLin;
  final double? contentPadding;
  final Color? textColor, hintColor;
  final bool passwordVisible;
  final Color? borderColor;
  final List<TextInputFormatter>? inputForm;
  final String? initialValue;
  final FormFieldValidator<String>? validateForm;
  final FocusNode? hasFocus;
  final Function()? onTap;
  final bool? readOnly;
  final dynamic controller;
  final ToolbarOptions? toolbarOptions;

  const AppForm(
      {Key? key,
      this.hintText,
      this.focusNode,
      this.toolbarOptions,
      this.customTextHintStyle,
      this.prefixIcon,
      this.inputType,
      this.onChanged,
      this.text,
      this.onComplete,
      this.onEditing,
      this.onSubmitted,
      this.isEnabled,
      this.suffixIcon,
      this.labelText,
      this.maxLen,
      this.maxLin,
      this.contentPadding,
      this.textColor,
      this.hintColor,
      this.passwordVisible = false,
      this.borderColor,
      this.inputForm,
      this.initialValue,
      this.validateForm,
      this.hasFocus,
      this.onTap,
      this.readOnly,
      this.controller})
      : super(key: key);

  @override
  State<AppForm> createState() => _AppFormState();
}

class _AppFormState extends State<AppForm> {
  late TextEditingController controller;

  late FocusNode focusNode;
  final String identifier = UniqueKey().toString();
  late GlobalKey<FormFieldState> key;
  AutovalidateMode autoValidate = AutovalidateMode.disabled;

  @override
  void initState() {
    String text = widget.text ?? '';
    key = GlobalKey(debugLabel: identifier);
    controller = TextEditingController(text: text);
    focusNode = widget.focusNode ?? FocusNode();
    super.initState();
    controller.addListener(_listener);

    focusNode.addListener(() {
      if (!(focusNode.hasFocus) && autoValidate == AutovalidateMode.disabled) {
        autoValidate = AutovalidateMode.onUserInteraction;
        _listener();
      }
    });
  }

  String get text => controller.text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0.h),
      child: TextFormField(
        onTap: widget.onTap,
        readOnly: widget.readOnly ?? false,
        cursorColor: appBgcolor.withOpacity(0.1),
        initialValue: widget.initialValue,
        obscureText: widget.passwordVisible,
        onFieldSubmitted: widget.onSubmitted,
        controller: widget.controller,
        inputFormatters: widget.inputForm,
        maxLines: widget.maxLin,
        focusNode: widget.hasFocus,
        validator: widget.validateForm ??
            (value) => (value?.isEmpty ?? true) ? 'Please enter A text' : null,
        onChanged: widget.onChanged,
        cursorHeight: 14.h,
        toolbarOptions: widget.toolbarOptions ??
            const ToolbarOptions(
                copy: true, cut: true, paste: true, selectAll: true),
        enabled: widget.isEnabled,
        keyboardType: widget.inputType,
        textCapitalization: TextCapitalization.words,
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
            fontWeight: FontWeight.w500, letterSpacing: .1, fontSize: 12.sp),
        buildCounter: (context,
                {int? currentLength,
                bool isFocused = false,
                required int? maxLength}) =>
            SizedBox.shrink(),
        decoration: InputDecoration(
          errorStyle: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(fontWeight: FontWeight.w300, fontSize: 10.sp),
          labelText: widget.labelText,
          labelStyle: (text.isNotEmpty || focusNode.hasFocus)
              ? Theme.of(context).textTheme.bodyText2?.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 10.5.sp,
                  height: .8,
                  color: computeLabelColour)
              : null,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: widget.hintText,
          suffixIcon: widget.suffixIcon,
          hintStyle: GoogleFonts.poppins(
              color: Colors.black.withOpacity(0.5),
              fontWeight: FontWeight.w500,
              fontSize: 10.sp),
          prefixIcon: widget.prefixIcon,
          contentPadding: EdgeInsets.only(bottom: 0, left: 15),
          counterText: '',
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: appBgcolor),
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  _listener() {
    if (autoValidate != AutovalidateMode.disabled) key.currentState?.validate();
    setState(() {});
  }

  Color get computeLabelColour => (widget.validateForm != null &&
          widget.validateForm!(controller.text) != null &&
          autoValidate != AutovalidateMode.disabled)
      ? Colors.red
      : focusNode.hasFocus
          ? Theme.of(context).primaryColor
          : const Color(0xff283461);
}
