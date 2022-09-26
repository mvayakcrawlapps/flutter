import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../colors.dart';
import '../text_styles.dart';

Widget commonFillButtonView(
    {required BuildContext context,
    String? title,
    required Function tapOnButton,
    required bool isLoading,
    Widget? titleWidget,
    TextStyle? titleStyle,
    double? borderRadius,
    bool isLightButton = false,
    Color? color,
    Color? fontColor,
    double? height = 60.0,
    bool? border = false,
    double? width}) {
  return SizedBox(
    width: width ?? MediaQuery.of(context).size.width,
    height: height,
    child: Row(children: [
      Expanded(
        child: InkWell(
          onTap: () {
            if (!isLoading) {
              tapOnButton();
            }
          },
          child: Container(
            decoration: BoxDecoration(color: color ?? color9E9E9E, borderRadius: BorderRadius.circular(borderRadius ?? 12)),
            height: height,
            width: width ?? MediaQuery.of(context).size.width,
            child: isLoading
                ? const SizedBox(height: 20, child: SpinKitThreeBounce(color: colorFFFFFF, size: 30.0))
                : Center(child: titleWidget ?? Text(title ?? "", style: titleStyle ?? colorFFFFFF14w400)),
          ),
        ),
      )
    ]),
  );
}
