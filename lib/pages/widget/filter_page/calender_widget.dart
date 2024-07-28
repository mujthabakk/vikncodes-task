import 'package:flutter/material.dart';
import 'package:vikncodes_task/core/extention/app_color_palete.dart';
import 'package:vikncodes_task/core/extention/app_extention.dart';

class CalenderWidget extends StatelessWidget {
  const CalenderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColorPalettes.blackbule,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.calendar_month),
            ),
            labelStyle: context.typography.bodySubText,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
