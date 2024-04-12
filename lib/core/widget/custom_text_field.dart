import 'package:chat_app/core/theme/text_theme.dart';
import 'package:chat_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final double? height;
  final Function(String? value)? onSaved;
  final FocusNode? focusNode;
  final Function(String value)? onChanged;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int? maxLines;
  final TextStyle? style;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;
  final String? hintText;
  final TextStyle? hintStyle;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final String? Function(String? value)? validator;
  final String? initialValue;
  final bool? expands;
  final bool? readOnly;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final VoidCallback? onTap;
  final String? errorText;
  final BorderRadius? borderRadius;
  final String? labelText;
  final bool password;
  final Color? fillColor;

  const CustomTextField(
      {Key? key,
      this.height,
      this.onSaved,
      this.focusNode,
      this.onChanged,
      this.keyboardType,
      this.maxLength,
      this.maxLines,
      this.textInputAction,
      this.style,
      this.contentPadding,
      this.hintText,
      this.hintStyle,
      this.enabledBorder,
      this.focusedBorder,
      this.controller,
      this.validator,
      this.initialValue,
      this.expands,
      this.readOnly,
      this.inputFormatters,
      this.suffixIcon,
      this.prefixIcon,
      this.onTap,
      this.errorText,
      this.borderRadius,
      this.labelText,
      this.password = false,
      this.fillColor})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool password;

  @override
  void initState() {
    password = widget.password;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // if (widget.labelText != null)
        //   Row(
        //     children: [
        //       const SizedBox(width: 10),
        //       Text(widget.labelText!,
        //           style: CustomTextStyle.f40016.copyWith(fontSize: 14)),
        //     ],
        //   ),
        // if (widget.labelText != null) const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: TextFormField(
            obscureText: password,
            onSaved: widget.onSaved,
            focusNode: widget.focusNode,
            onChanged: widget.onChanged,
            keyboardType: widget.keyboardType,
            maxLength: widget.maxLength,
            onTapOutside: (_) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            maxLines: password ? 1 : widget.maxLines,

            textInputAction: widget.textInputAction,
            // style: style ?? TextStyle(color: AppColors.textColor, fontSize: 50.sp, height: 3.7.h),
            style:
                widget.style ?? CustomTextStyle.f40016.copyWith(fontSize: 14),
            controller: widget.controller,
            validator: widget.validator,
            initialValue: widget.initialValue,
            expands: widget.expands ?? false,
            readOnly: widget.readOnly ?? false,
            inputFormatters: widget.inputFormatters,
            onTap: widget.onTap,
            cursorColor: AppColors.primaryColor,
            decoration: InputDecoration(
              prefixIcon: widget.prefixIcon,
              errorText: widget.errorText,
              errorStyle: CustomTextStyle.f40016
                  .copyWith(fontSize: 14, color: Colors.red),
              fillColor: widget.fillColor ?? Colors.grey,
              filled: true,
              suffix: widget.suffixIcon,
              suffixIcon: widget.password
                  ? IconButton(
                      icon: Icon(
                        password ? Icons.visibility : Icons.visibility_off,
                        color: AppColors.primaryColor,
                      ),
                      onPressed: () {
                        setState(() {
                          password = !password;
                        });
                      },
                    )
                  : widget.suffixIcon,
              isDense: false,
              counter: const SizedBox(),
              labelText: widget.labelText,
              labelStyle: CustomTextStyle.f50020
                  .copyWith(color: AppColors.primaryColor),
              floatingLabelStyle: CustomTextStyle.f50020
                  .copyWith(color: AppColors.primaryColor, letterSpacing: 1.2),
              contentPadding: widget.contentPadding ??
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              // floatingLabelBehavior: FloatingLabelBehavior.always,
              hintText: widget.hintText,
              hintStyle: widget.hintStyle ??
                  CustomTextStyle.f40016.copyWith(color: Colors.black),
              // border: OutlineInputBorder(
              //     borderSide: const BorderSide(color: Color(0xFFE0E0DF)),
              //     borderRadius: borderRadius ?? BorderRadius.circular(10.0)
              // ),
              // disabledBorder: OutlineInputBorder(
              //     borderSide: const BorderSide(color: Color(0xFFE0E0DF)),
              //     borderRadius: borderRadius ?? BorderRadius.circular(10.0)
              // ),
              errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.redAccent),
                  borderRadius:
                      widget.borderRadius ?? BorderRadius.circular(45.0)),
              enabledBorder: widget.enabledBorder ??
                  OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: AppColors.primaryColor),
                      borderRadius:
                          widget.borderRadius ?? BorderRadius.circular(45.0)),
              focusedBorder: widget.focusedBorder ??
                  OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: AppColors.primaryColor),
                      borderRadius:
                          widget.borderRadius ?? BorderRadius.circular(45.0)),
            ),
          ),
        ),
      ],
    );
  }
}
