import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vikncodes_task/core/constance/filter_page_const.dart';
import 'package:vikncodes_task/core/extention/app_color_palete.dart';
import 'package:vikncodes_task/core/extention/app_extention.dart';
import 'package:vikncodes_task/pages/widget/filter_page/calender_widget.dart';
import 'package:vikncodes_task/pages/widget/filter_page/search_widget.dart';
import 'package:vikncodes_task/pages/widget/filter_page/statuses_widget.dart';

class FilterPage extends ConsumerWidget {
  static const routerPath = "/FilterPage";
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constants = ref.watch(filterPageConstProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Filters",
          style: context.typography.h1,
        ),
        actions: [
          const Icon(Icons.visibility, color: AppColorPalettes.blue),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.spacer.space_300),
            child: Text(
              "Filters",
              style: context.typography.bodySubText
                  .copyWith(color: AppColorPalettes.blue),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            color: AppColorPalettes.grennmix,
            height: 5,
            endIndent: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: context.spacer.space_200),
            child: SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: context.color.profileCardBackground,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "This Month",
                      style: context.typography.bodySubTextWhite,
                    ),
                    const Icon(Icons.arrow_drop_down, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(context.spacer.space_200),
                child: const CalenderWidget(),
              ),
              const CalenderWidget(),
            ],
          ),
          const Divider(
            color: AppColorPalettes.grennmix,
            height: 5,
            endIndent: 20.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: context.spacer.space_200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                StatusesWidget(
                  onTap: () {},
                  text: "Pending",
                ),
                StatusesWidget(
                  onTap: () {},
                  text: "Invoiced",
                ),
                StatusesWidget(
                  onTap: () {},
                  text: "Cancelled",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(context.spacer.space_200),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: AppColorPalettes.blackbule, width: 2),
                color: context.color.profileCardBackground,
                borderRadius: BorderRadius.circular(context.spacer.space_100),
              ),
              child: Padding(
                padding: EdgeInsets.all(context.spacer.space_100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Customer", style: context.typography.bodySubText),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_drop_down)),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(context.spacer.space_200),
            child: SearchWidget(),
          )
        ],
      ),
    );
  }
}
