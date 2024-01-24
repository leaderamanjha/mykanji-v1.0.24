import '../controller/final_restore_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FinalRestoreScreen.
///
/// This class ensures that the FinalRestoreController is created when the
/// FinalRestoreScreen is first loaded.
class FinalRestoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FinalRestoreController());
  }
}
