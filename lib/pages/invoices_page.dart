import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vikncodes_task/core/extention/app_color_palete.dart';
import 'package:vikncodes_task/core/extention/app_extention.dart';

class InvoicesPage extends ConsumerWidget {
  static const String routePath = '/invoices';
  const InvoicesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Invoices",
          style: context.typography.h1,
        ),
      ),
      body: Column(
        children: [
          const Divider(
            color: AppColorPalettes.grennmix,
            height: 2,
          ),
          Padding(
            padding: EdgeInsets.all(context.spacer.space_150),
            child: Container(
              width: context.spacer.space_900 * 2,
              decoration: BoxDecoration(
                color: AppColorPalettes.blackbule,
                borderRadius: BorderRadius.circular(context.spacer.space_900),
              ),
              child: Center(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_list_off_rounded,
                      ),
                    ),
                    Text(
                      " Add Filters",
                      style: context.typography.bodySubTextWhite,
                    )
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            color: AppColorPalettes.grennmix,
            height: 2,
          ),
          Padding(
            padding: EdgeInsets.all(context.spacer.space_200),
            child: Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "#Invoice No",
                                  style: context.typography.bodySubText,
                                ),
                                Text("Customer Name",
                                    style: context.typography.bodySubTextWhite),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pendind",
                                  style: context.typography.bodySubText,
                                ),
                                Text("SAR.123456789",
                                    style: context.typography.bodySubTextWhite),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: context.spacer.space_200),
                          child: const Divider(
                            color: AppColorPalettes.grennmix,
                            height: 5,
                            endIndent: BorderSide.strokeAlignOutside,
                          ),
                        )
                      ],
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
