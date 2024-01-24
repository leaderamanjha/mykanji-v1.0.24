import '../controller/upload_image_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UploadImageScreen.
///
/// This class ensures that the UploadImageController is created when the
/// UploadImageScreen is first loaded.
class UploadImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UploadImageController());
  }
}
