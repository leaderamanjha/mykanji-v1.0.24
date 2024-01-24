import '../controller/upcycle_services_provider_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the UpcycleServicesProviderProfileScreen.
///
/// This class ensures that the UpcycleServicesProviderProfileController is created when the
/// UpcycleServicesProviderProfileScreen is first loaded.
class UpcycleServicesProviderProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpcycleServicesProviderProfileController());
  }
}
