import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vikncodes_task/core/constance/home_page_const.dart';
import 'package:vikncodes_task/core/extention/app_extention.dart';
import 'package:vikncodes_task/pages/sales_list_page.dart';
import 'package:vikncodes_task/pages/widget/dashborde/dashboard_graph_widget.dart';
import 'package:vikncodes_task/pages/widget/dashborde/home_page_card.dart';
import 'package:vikncodes_task/pages/widget/dashborde/home_page_titile_widget.dart';

class HomePage extends ConsumerWidget {
  static const String routePath = '/home_page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constance = ref.watch(homePageConstProvider);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(context.spacer.space_250),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: context.spacer.space_200),
                  child: HomePageTitileWidget(constance: constance),
                ),
                InkWell(
                  onTap: () {
                    context.push(SalesListPage.routePath);
                  },
                  child: DashBordGraphWidget(
                    constance: constance,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: context.spacer.space_200),
                  child: HomePageCard(
                    constance: constance,
                    ammount: constance.bookingAmontText,
                    img: "assets/image/sticker.png",
                    resevedOrRupeesText: constance.reservedText,
                    textTittile: constance.bookingText,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: context.spacer.space_200),
                  child: HomePageCard(
                    constance: constance,
                    ammount: constance.invoicesAmontText,
                    img: "assets/image/moneybag.png",
                    resevedOrRupeesText: constance.rupeesText,
                    textTittile: constance.invoicesText,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final selectedIndexProvider = StateProvider<int>((ref) {
  return 0;
});
