import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vikncodes_task/model/user_details/datum.dart';
part 'filter_controller.g.dart';

@riverpod
class FilterController extends _$FilterController {
  @override
  List<Datum> build({required List<Datum> data}) {
    return data;
  }

  void filterData(String? text) {
    if (text == null || text.isEmpty) {
      state = data;
    } else {
      state = data
          .where((userDetails) => userDetails.date
              .toString()
              .toLowerCase()
              .contains(text.toLowerCase()))
          .toList();
    }
  }

  void filterStatus(String? text) {
    if (text == null || text.isEmpty) {
      state = data;
    } else {
      state = data
          .where((userDetails) => userDetails.status
              .toString()
              .toLowerCase()
              .contains(text.toLowerCase()))
          .toList();
    }
  }
}
