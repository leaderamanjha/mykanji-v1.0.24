import '../controller/restore_services_provider_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RestoreServicesProviderProfileScreen.
///
/// This class ensures that the RestoreServicesProviderProfileController is created when the
/// RestoreServicesProviderProfileScreen is first loaded.
class RestoreServicesProviderProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestoreServicesProviderProfileController());
  }
}
