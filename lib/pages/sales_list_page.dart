import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vikncodes_task/controller/get_sales_controller.dart';
import 'package:vikncodes_task/core/extention/app_color_palete.dart';
import 'package:vikncodes_task/core/extention/app_extention.dart';
import 'package:vikncodes_task/pages/filter_page.dart';

class SalesListPage extends ConsumerWidget {
  static const String routePath = '/invoices';
  const SalesListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Invoices",
          style: context.typography.h1,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                        onPressed: () {
                          context.push(FilterPage.routerPath);
                        },
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
              child: ref.watch(salesProvider).when(
                    data: (data) {
                      return ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: data.data?.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "#Invoice No",
                                        style: context.typography.bodySubText,
                                      ),
                                      Text("Customer Name",
                                          style: context
                                              .typography.bodySubTextWhite),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data.data?[index].status ?? "",
                                        style: context.typography.bodySubText,
                                      ),
                                      Text(data.data?[index].date ?? "",
                                          style: context
                                              .typography.bodySubTextWhite),
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
                        },
                      );
                    },
                    error: (error, stackTrace) => Center(
                      child: Text(error.toString()),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
