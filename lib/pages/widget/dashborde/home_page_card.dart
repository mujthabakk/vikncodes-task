import 'package:flutter/material.dart';
import 'package:vikncodes_task/core/constance/home_page_const.dart';
import 'package:vikncodes_task/core/extention/app_color_palete.dart';
import 'package:vikncodes_task/core/extention/app_extention.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard({
    super.key,
    required this.constance,
    required this.img,
    required this.textTittile,
    required this.ammount,
    required this.resevedOrRupeesText,
  });

  final HomePageConst constance;
  final String img;
  final String textTittile;
  final String ammount;
  final String resevedOrRupeesText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.spacer.space_900 * 1.5,
      decoration: BoxDecoration(
        color: context.color.dashboardCardBackground,
        borderRadius: BorderRadius.circular(context.spacer.space_250),
      ),
      child: Padding(
        padding: EdgeInsets.all(context.spacer.space_200),
        child: Row(children: [
          Container(
            width: context.spacer.space_600,
            height: double.infinity,
            decoration: BoxDecoration(
                color: AppColorPalettes.blue50,
                borderRadius: BorderRadius.circular(
                  context.spacer.space_900,
                )),
            child: Center(
              child: Image.asset(img),
            ),
          ),
          SizedBox(
            width: context.spacer.space_200,
          ),
          Column(
            children: [
              Text(
                textTittile,
                style: context.typography.h1SemiBold,
              ),
              Text(
                ammount,
                style: context.typography.h1SemiBold,
              ),
              Text(resevedOrRupeesText, style: context.typography.bodySubText)
            ],
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
                color: context.color.dashboarsmaldCardBackground,
                borderRadius: BorderRadius.circular(context.spacer.space_200)),
            child: Padding(
              padding: EdgeInsets.all(context.spacer.space_300),
              child: const Icon(Icons.arrow_forward),
            ),
          )
        ]),
      ),
    );
  }
}