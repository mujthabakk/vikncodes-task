import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vikncodes_task/core/constance/home_page_const.dart';
import 'package:vikncodes_task/core/extention/app_extention.dart';
import 'package:vikncodes_task/pages/profile_page.dart';

class HomePageTitileWidget extends StatelessWidget {
  const HomePageTitileWidget({
    super.key,
    required this.constance,
  });

  final HomePageConst constance;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(child: Image.asset("assets/image/img-logo.png")),
        Text(
          constance.titleText,
          style: context.typography.h1Bold,
        ),
        const Spacer(),
        Image.asset("assets/image/img-profile.png"),
      ],
    );
  }
}
