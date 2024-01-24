import '../controller/mymeasurment_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MymeasurmentScreen.
///
/// This class ensures that the MymeasurmentController is created when the
/// MymeasurmentScreen is first loaded.
class MymeasurmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MymeasurmentController());
  }
}
