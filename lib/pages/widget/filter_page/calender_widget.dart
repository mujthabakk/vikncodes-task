import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vikncodes_task/core/extention/app_color_palete.dart';
import 'package:vikncodes_task/core/extention/app_extention.dart';
import 'package:vikncodes_task/model/user_details/datum.dart';
import 'package:vikncodes_task/controller/filter_controller.dart';

class CalenderWidget extends ConsumerWidget {
  const CalenderWidget({
    super.key,
    required this.data,
  });

  final List<Datum> data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateController = ref.watch(dateProvider.notifier);
    final TextEditingController controller = TextEditingController(
      text: dateController.state,
    );

    return SizedBox(
      width: 160,
      child: Card(
        color: AppColorPalettes.blackbule,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: TextField(
          onChanged: (value) {
            ref.watch(filterControllerProvider(data: data).notifier).filterData(value);
            dateController.state = value;

            ref.invalidate(filterControllerProvider);
          },
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
                  controller.text = pickedDate.toIso8601String().split('T').first;
                  ref.watch(filterControllerProvider(data: data).notifier).filterData(controller.text);
                  dateController.state = controller.text;
                }
              },
              icon: const Icon(Icons.calendar_month, color: Colors.white),
            ),
            labelStyle: context.typography.bodySubText,
            border: InputBorder.none,
            hintText: 'Select Date',
            hintStyle: context.typography.bodySubText.copyWith(color: Colors.white70),
          ),
        ),
      ),
    );
  }
}

final dateProvider = StateProvider<String>((ref) {
  return "2024-06-10"; // Initial date value
});
