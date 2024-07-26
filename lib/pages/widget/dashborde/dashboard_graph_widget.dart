import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vikncodes_task/core/constance/home_page_const.dart';
import 'package:vikncodes_task/core/extention/app_color_palete.dart';
import 'package:vikncodes_task/core/extention/app_extention.dart';
import 'package:vikncodes_task/pages/dashborde/home_page.dart';

class DashBordGraphWidget extends ConsumerWidget {
  const DashBordGraphWidget({
    super.key,
    required this.constance,
  });

  final HomePageConst constance;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);
    return Container(
      width: double.infinity,
      height: context.spacer.space_900 * 5.5,
      decoration: BoxDecoration(
        color: context.color.dashboardCardBackground,
        borderRadius: BorderRadius.circular(context.spacer.space_250),
      ),
      child: Padding(
        padding: EdgeInsets.all(context.spacer.space_200),
        child: Column(
          children: [
            ////// //
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          constance.sarText,
                          style: context.typography.bodySubText,
                        ),
                        Text(
                          constance.amountText,
                          style: context.typography.bodySubTextWhite,
                        ),
                      ],
                    ),
                    Text(
                      constance.profitText,
                    )
                  ],
                ),
                Text(
                  constance.revenueText,
                  style: context.typography.h1,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: context.spacer.space_300,
                  bottom: context.spacer.space_200),
              child: Container(
                width: double.infinity,
                height: 200,
                color: AppColorPalettes.grey150,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: context.spacer.space_200),
              child: Text(
                constance.dateText,
                style: context.typography.h1,
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(6),
                  child: GestureDetector(
                    onTap: () {
                      ref.read(selectedIndexProvider.notifier).state = index;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? context.color.buttoncolor
                            : context.color.dashboarsmaldCardBackground,
                        borderRadius: BorderRadius.circular(
                          context.spacer.space_100,
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Text("0${index + 1}",
                              style: context.typography.bodySubTextWhite),
                        ),
                      ),
                    ),
                  ),
                ),
                itemCount: 9,
              ),
            )
          ],
        ),
      ),
    );
  }
}