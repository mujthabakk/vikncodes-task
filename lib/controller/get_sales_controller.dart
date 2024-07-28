import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vikncodes_task/controller/auth/token_provider.dart';
import 'package:vikncodes_task/model/user_details/user_details.dart';
import 'package:vikncodes_task/service/use_details/get_sale_service.dart';
part 'get_sales_controller.g.dart';

@riverpod
Future<UserDetails> sales(SalesRef ref)async {
  return await GetSaleService()
      .userdetails(token: ref.read(tokenProvider.notifier).state ?? "");
}
