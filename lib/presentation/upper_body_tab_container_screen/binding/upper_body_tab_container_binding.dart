import '../controller/upper_body_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UpperBodyTabContainerScreen.
///
/// This class ensures that the UpperBodyTabContainerController is created when the
/// UpperBodyTabContainerScreen is first loaded.
class UpperBodyTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpperBodyTabContainerController());
  }
}
