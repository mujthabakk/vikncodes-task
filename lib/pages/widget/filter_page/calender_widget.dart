import 'package:flutter/material.dart';
import 'package:vikncodes_task/core/extention/app_color_palete.dart';
import 'package:vikncodes_task/core/extention/app_extention.dart';

class CalenderWidget extends StatelessWidget {
  const CalenderWidget({
    super.key,
    required this.controller,
    required this.onChanged,
  });
  final TextEditingController controller;
  final void Function(String) onChanged;
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
          onChanged: onChanged,
          controller: controller,
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
