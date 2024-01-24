import '../controller/final_select_upcycle_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FinalSelectUpcycleScreen.
///
/// This class ensures that the FinalSelectUpcycleController is created when the
/// FinalSelectUpcycleScreen is first loaded.
class FinalSelectUpcycleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FinalSelectUpcycleController());
  }
}
