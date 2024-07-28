import 'package:vikncodes_task/core/utils/error_snak_bark.dart';
import 'package:vikncodes_task/main.dart';

class SnackbarUtils {
  /// Show a message as a snackbar
  ///
  /// [message] Is the message to be shown to the user
  static void showError(String message) {
    MainApp.scaffoldMessngerKey.currentState!
        .showSnackBar(ErrorSnackBar(errorMessage: message));
  }
}
