import 'package:flutter/material.dart';
import 'package:vikncodes_task/core/extention/app_color_extention.dart';
import 'package:vikncodes_task/core/extention/app_space_extention.dart';
import 'package:vikncodes_task/core/extention/app_typography_extention.dart';

extension AppExtention on BuildContext {
  AppTypographyExtension get typography {
    return Theme.of(this).extension<AppTypographyExtension>()!;
  }

  AppColorExtension get color {
    return Theme.of(this).extension<AppColorExtension>()!;
  }

  AppSpaceExtension get spacer {
    return Theme.of(this).extension<AppSpaceExtension>()!;
  }
}
