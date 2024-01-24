import '../controller/profile_details_edit_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileDetailsEditScreen.
///
/// This class ensures that the ProfileDetailsEditController is created when the
/// ProfileDetailsEditScreen is first loaded.
class ProfileDetailsEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileDetailsEditController());
  }
}
