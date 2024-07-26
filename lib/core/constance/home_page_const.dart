import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_page_const.g.dart';

class HomePageConst {
  final titleText = "CabZing";
  final sarText = "SAR";
  final amountText = "  2,78,000.00";
  final profitText = "+21% than last month.";
  final revenueText = "Revenue";
  final dateText = "September 2023";
  final reservedText = "Reserved";
  final bookingText = "Booking";
  final bookingAmontText = "123";
  final invoicesText = "Invoices";
  final invoicesAmontText = "10,232.00";
  final rupeesText = "RupeesText";
}

@riverpod
HomePageConst homePageConst(HomePageConstRef ref) {
  return HomePageConst();
}
