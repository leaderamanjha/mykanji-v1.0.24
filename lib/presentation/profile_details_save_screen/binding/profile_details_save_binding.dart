import '../controller/profile_details_save_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileDetailsSaveScreen.
///
/// This class ensures that the ProfileDetailsSaveController is created when the
/// ProfileDetailsSaveScreen is first loaded.
class ProfileDetailsSaveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileDetailsSaveController());
  }
}
