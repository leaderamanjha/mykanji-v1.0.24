import '../controller/restoreserviceprovider_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RestoreserviceproviderScreen.
///
/// This class ensures that the RestoreserviceproviderController is created when the
/// RestoreserviceproviderScreen is first loaded.
class RestoreserviceproviderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestoreserviceproviderController());
  }
}
