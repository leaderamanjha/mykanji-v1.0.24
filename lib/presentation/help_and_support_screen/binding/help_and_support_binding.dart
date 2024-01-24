import '../controller/help_and_support_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HelpAndSupportScreen.
///
/// This class ensures that the HelpAndSupportController is created when the
/// HelpAndSupportScreen is first loaded.
class HelpAndSupportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HelpAndSupportController());
  }
}
