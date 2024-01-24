import '../controller/uploded_image_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UplodedImageScreen.
///
/// This class ensures that the UplodedImageController is created when the
/// UplodedImageScreen is first loaded.
class UplodedImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UplodedImageController());
  }
}
