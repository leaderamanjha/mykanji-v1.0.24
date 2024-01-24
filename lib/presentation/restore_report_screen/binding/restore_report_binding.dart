import '../controller/restore_report_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RestoreReportScreen.
///
/// This class ensures that the RestoreReportController is created when the
/// RestoreReportScreen is first loaded.
class RestoreReportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestoreReportController());
  }
}
