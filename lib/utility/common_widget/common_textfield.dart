import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../colors.dart';
import '../text_styles.dart';

Widget commonTextFiled({
  String? title,
  required String hintText,
  bool isPassword = false,
  bool isRequired = true,
  required TextEditingController textEditingController,
  Function? validationFunction,
  int? maxLength,
  Function? onSavedFunction,
  Function? onFieldSubmit,
  TextInputType? keyboardType,
  Function? onTapFunction,
  Function? onChangedFunction,
  List<TextInputFormatter>? inputFormatter,
  bool isEnabled = true,
  bool isReadOnly = false,
  int? errorMaxLines,
  int? maxLine,
  FocusNode? textFocusNode,
  GlobalKey<FormFieldState>? key,
  TextAlign align = TextAlign.start,
  Widget? suffixIcon,
  Widget? preFixIcon,
  bool? border = false,
  bool isShowTitle = true,
  Color? bgColor,
  UnderlineInputBorder? underlineInputBorder,
  EdgeInsetsGeometry? contentPadding,
}) {
  bool passwordVisible = isPassword;
  return StatefulBuilder(
    builder: (context, newSetState) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          title == null ? Container() : Text(title, style: color9E9E9E14w500),
          title == null ? Container() : const SizedBox(height: 13),
          TextFormField(
            enabled: !isEnabled ? false : true,
            textAlign: align,
            showCursor: !isReadOnly,
            readOnly: isReadOnly,
            onTap: () {
              if (onTapFunction != null) {
                onTapFunction();
              }
            },
            key: key,
            focusNode: textFocusNode,
            onChanged: (value) {
              if (onChangedFunction != null) {
                onChangedFunction(value);
              }
            },
            validator: (value) {
              return validationFunction != null ? validationFunction(value) : null;
            },
            onSaved: (value) {
              return onSavedFunction != null ? onSavedFunction(value) : null;
            },
            onFieldSubmitted: (value) {
              return onFieldSubmit != null ? onFieldSubmit(value) : null;
            },
            maxLines: maxLine ?? 1,
            keyboardType: keyboardType,
            controller: textEditingController,
            cursorColor: color9E9E9E,
            obscureText: passwordVisible,
            style: color9E9E9E14w400.copyWith(fontWeight: FontWeight.w400),
            inputFormatters: inputFormatter,
            decoration: InputDecoration(
              errorMaxLines: errorMaxLines ?? 1,
              filled: true,
              fillColor: bgColor ?? colorFFFFFF,
              contentPadding: contentPadding ?? const EdgeInsets.all(20),
              focusedBorder: border == false ? textFieldBorderStyle : null,
              disabledBorder: border == false ? textFieldBorderStyle : null,
              enabledBorder: border == false ? textFieldBorderStyle : null,
              errorBorder: border == false ? textFieldBorderStyle : null,
              border: InputBorder.none,
              focusedErrorBorder: border == false ? textFieldBorderStyle : null,
              hintText: hintText,
              prefixIcon: preFixIcon,
              hintStyle: color9E9E9E14w400.copyWith(color: color9E9E9E.withOpacity(0.50), fontWeight: FontWeight.w400),
              suffixIcon: isPassword
                  ? InkWell(
                      onTap: () {
                        newSetState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                      child: passwordVisible
                          ? const Icon(Icons.visibility_off, color: color9E9E9E)
                          : const Icon(Icons.visibility_rounded, color: color9E9E9E))
                  : suffixIcon,
            ),
          ),
        ],
      );
    },
  );
}

OutlineInputBorder textFieldBorderStyle =
    OutlineInputBorder(borderSide: const BorderSide(color: Colors.transparent), borderRadius: commonButtonBorderRadius);

BorderRadius commonButtonBorderRadius = BorderRadius.circular(15.0);
