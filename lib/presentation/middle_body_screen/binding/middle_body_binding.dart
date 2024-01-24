import '../controller/middle_body_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MiddleBodyScreen.
///
/// This class ensures that the MiddleBodyController is created when the
/// MiddleBodyScreen is first loaded.
class MiddleBodyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MiddleBodyController());
  }
}
