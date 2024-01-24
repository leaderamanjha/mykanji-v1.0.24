import '../controller/restore_upload_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RestoreUploadScreen.
///
/// This class ensures that the RestoreUploadController is created when the
/// RestoreUploadScreen is first loaded.
class RestoreUploadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestoreUploadController());
  }
}
