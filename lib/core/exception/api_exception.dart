import 'package:vikncodes_task/core/exception/base_exception.dart';

final class ApiException extends BaseException {
  const ApiException(String? message)
      : super(message: message ?? 'Unknown Exception');
}
