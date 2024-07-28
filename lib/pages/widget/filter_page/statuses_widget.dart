import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vikncodes_task/core/extention/app_color_palete.dart';
import 'package:vikncodes_task/core/extention/app_extention.dart';

final selectedStatusProvider = StateProvider<String?>((ref) => null);

class StatusesWidget extends ConsumerWidget {
  const StatusesWidget({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedStatus = ref.watch(selectedStatusProvider);
    final isSelected = selectedStatus == text;

    return InkWell(
      onTap: onTap,
      child: ElevatedButton(
        onPressed: () {
          ref.read(selectedStatusProvider.notifier).state = text;
        },
        style: ElevatedButton.styleFrom(
          backgroundColor:
              isSelected ? AppColorPalettes.blue : AppColorPalettes.blackbule,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: Text(text, style: context.typography.bodySubText),
      ),
    );
  }
}
