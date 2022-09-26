import 'package:flutter/material.dart';

import '../text_styles.dart';

Widget commonCheckbox(
    {required String plName, int? id, bool checkBoxColorLight = false, required Function callBack, bool plStatus = false, double padding = 8.0}) {
  return Padding(
    padding: EdgeInsets.all(padding),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        StatefulBuilder(builder: (context, snapshot) {
          return InkWell(
            onTap: () {
              snapshot(() {
                // pl_status = !pl_status;
                callBack();
              });
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                !plStatus ? Image.asset( "assets/icons/emptycheckbox.png") : Image.asset("assets/icons/fillCheckedBox.png"),
              ],
            ),
          );
        }),
        const SizedBox(width: 8.0),
        Text(
          plName,
          style: color9E9E9E14w500.copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    ),
  );
}
