import '../controller/termscondition_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TermsconditionScreen.
///
/// This class ensures that the TermsconditionController is created when the
/// TermsconditionScreen is first loaded.
class TermsconditionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TermsconditionController());
  }
}
