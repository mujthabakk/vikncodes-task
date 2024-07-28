import 'package:freezed_annotation/freezed_annotation.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({
    int? index,
    String? id,
    @JsonKey(name: 'VoucherNo') String? voucherNo,
    @JsonKey(name: 'Date') String? date,
    @JsonKey(name: 'LedgerName') String? ledgerName,
    @JsonKey(name: 'TotalGrossAmt_rounded') double? totalGrossAmtRounded,
    @JsonKey(name: 'TotalTax_rounded') double? totalTaxRounded,
    @JsonKey(name: 'GrandTotal_Rounded') double? grandTotalRounded,
    @JsonKey(name: 'CustomerName') String? customerName,
    @JsonKey(name: 'TotalTax') double? totalTax,
    @JsonKey(name: 'Status') String? status,
    @JsonKey(name: 'GrandTotal') double? grandTotal,
    @JsonKey(name: 'is_billwised') bool? isBillwised,
    @JsonKey(name: 'billwise_status') String? billwiseStatus,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
