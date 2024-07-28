import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vikncodes_task/controller/filter_controller.dart';
import 'package:vikncodes_task/controller/get_sales_controller.dart';
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
    TextEditingController searchController =
        TextEditingController(text: "2024-06-10");

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
      body: ref.watch(salesProvider).when(
            data: (data) {
              // Watch the filtered data state
              final filterData =
                  ref.watch(filterControllerProvider(data: data.data!));

              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      color: AppColorPalettes.grennmix,
                      height: 5,
                      endIndent: 20.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: context.spacer.space_200),
                      child: SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                context.color.profileCardBackground,
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
                              const Icon(Icons.arrow_drop_down,
                                  color: Colors.white),
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
                          child: CalenderWidget(
                            controller: searchController,
                            onChanged: (value) async {
                              ref
                                  .watch(
                                      filterControllerProvider(data: data.data!)
                                          .notifier)
                                  .filterData(value);
                            },
                          ),
                        ),
                        CalenderWidget(
                          controller: searchController,
                          onChanged: (value) async {
                            ref
                                .watch(
                                    filterControllerProvider(data: data.data!)
                                        .notifier)
                                .filterData(value);
                          },
                        ),
                      ],
                    ),
                    const Divider(
                      color: AppColorPalettes.grennmix,
                      height: 5,
                      endIndent: 20.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: context.spacer.space_200),
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
                          border: Border.all(
                              color: AppColorPalettes.blackbule, width: 2),
                          color: context.color.profileCardBackground,
                          borderRadius:
                              BorderRadius.circular(context.spacer.space_100),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(context.spacer.space_100),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Customer",
                                  style: context.typography.bodySubText),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.arrow_drop_down),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(context.spacer.space_200),
                      child: const SearchWidget(),
                    ),
                    Padding(
                        padding: EdgeInsets.all(context.spacer.space_200),
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: filterData.length,
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
                                        Text(
                                          filterData[index].id ?? "",
                                          style: context
                                              .typography.bodySubTextWhite,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          filterData[index].status ?? "",
                                          style: context.typography.bodySubText,
                                        ),
                                        Text(
                                          filterData[index].date ?? "",
                                          style: context
                                              .typography.bodySubTextWhite,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: context.spacer.space_200,
                                  ),
                                  child: const Divider(
                                    color: AppColorPalettes.grennmix,
                                    height: 5,
                                  ),
                                ),
                              ],
                            );
                          },
                        )),
                  ],
                ),
              );
            },
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
    );
  }
}

final filter = StateProvider<List>(
  (ref) => [],
);
