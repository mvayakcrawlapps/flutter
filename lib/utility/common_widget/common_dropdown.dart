import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_struc/utility/colors.dart';

import '../text_styles.dart';

Widget commonDropDown({
  required List<String> selectionData,
  String? selectedValue,
  Function? callback,
  double height = 50,
  String? hint,
  Color? filledColor,
  EdgeInsetsGeometry? padding}) {
  return Container(
    decoration: BoxDecoration(color: filledColor ?? colorFFFFFF, borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                dropdownPadding: EdgeInsets.zero,
                buttonPadding: EdgeInsets.zero,
                isExpanded: true,
                hint: Text(
                  hint ?? 'Select Item',
                  style: color9E9E9E14w500.copyWith(color: color9E9E9E.withOpacity(0.50)),
                ),
                items: selectionData
                    .map((item) =>
                    DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                            item,
                            style: color9E9E9E14w500
                        )
                    ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  callback!(value);
                },
                // buttonHeight: 50,
                itemHeight: 50,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}