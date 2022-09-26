import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors.dart';
import '../text_styles.dart';

AppBar commonAppBar({
  double? elevation = 0,
  bool? leading,
  Widget? leadingWidget,
  Color? leadingColor,
  Widget? titleWidget,
  String? title,
  TextStyle? titleStyle,
  List<Widget>? actions,
  Function? onPressed,
  Color? bgColor,
}) {
  return AppBar(
      toolbarHeight: 60,
      backgroundColor: bgColor ?? colorFFFFFF,
      automaticallyImplyLeading: false,
      titleSpacing: 0.0,
      leading: Padding(
        padding: EdgeInsets.only(left: 8.0, right: leading == false ? 0 : 15),
        child: leading == false
            ? IconButton(
                onPressed: () => Get.back(result: true),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: leadingColor ?? color000000,
                ),
              )
            : leadingWidget ?? Container(),
      ),
      centerTitle: true,
      title: titleWidget ??
          Text(title ?? "", textAlign: TextAlign.start, style: titleStyle ?? color9E9E9E14w500, maxLines: 1, overflow: TextOverflow.ellipsis),
      actions: actions ?? [],
      elevation: elevation!);
}
