import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'filter_page_const.g.dart';

class FilterPageConst {
  static const String filterText = "Filters";
  static const String thisMonthText = "This Month";
  static const String lastMonthText = "Last Month";
  static const String pendingText = "Pending";
  static const String invoicedText = "Invoiced";
  static const String cancelledText = "Cancelled";
  static const String customerText = "Customer";
}

@riverpod
FilterPageConst filterPageConst(FilterPageConstRef ref) {
  return FilterPageConst();
}
