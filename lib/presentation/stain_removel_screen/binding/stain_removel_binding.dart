import '../controller/stain_removel_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StainRemovelScreen.
///
/// This class ensures that the StainRemovelController is created when the
/// StainRemovelScreen is first loaded.
class StainRemovelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StainRemovelController());
  }
}
