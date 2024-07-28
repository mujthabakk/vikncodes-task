import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vikncodes_task/model/user_details/datum.dart';
part 'filter_controller.g.dart';

@riverpod
class FilterController extends _$FilterController {
  @override
  List<Datum> build({required List<Datum> data}) {
    return data;
  }

  void filterData(
    String? text,
  ) {
    List<Datum> result = [];

    if (text == null || text.isEmpty) {
      result = state;
    } else {
      result = state
          .where((userDetails) => userDetails.date
              .toString()
              .toLowerCase()
              .contains(text.toLowerCase()))
          .toList();
    }
    state = result;
  }



    void filterSatus(
    String? text,
  ) {
    List<Datum> result = [];

    if (text == null || text.isEmpty) {
      result = state;
    } else {
      result = state
          .where((userDetails) => userDetails.status
              .toString()
              .toLowerCase()
              .contains(text.toLowerCase()))
          .toList();
    }
    state = result;
  }
}
