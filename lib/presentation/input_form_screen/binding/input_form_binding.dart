import '../controller/input_form_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InputFormScreen.
///
/// This class ensures that the InputFormController is created when the
/// InputFormScreen is first loaded.
class InputFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InputFormController());
  }
}
