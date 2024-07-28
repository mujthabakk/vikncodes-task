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
      child: Card(
        color: AppColorPalettes.blackbule,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: TextField(
          onChanged: onChanged,
          controller: controller,
          style: context.typography.bodySubText.copyWith(color: Colors.white),
          decoration: InputDecoration(
            prefixIcon: IconButton(
              onPressed: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );
                if (pickedDate != null) {
                  controller.text =
                      pickedDate.toIso8601String().split('T').first;
                  onChanged(controller.text);
                }
              },
              icon: const Icon(Icons.calendar_month, color: Colors.white),
            ),
            labelStyle: context.typography.bodySubText,
            border: InputBorder.none,
            hintText: 'Select Date',
            hintStyle:
                context.typography.bodySubText.copyWith(color: Colors.white70),
          ),
        ),
      ),
    );
  }
}
