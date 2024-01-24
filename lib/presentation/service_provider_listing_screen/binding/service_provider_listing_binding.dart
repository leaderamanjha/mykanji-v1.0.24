import '../controller/service_provider_listing_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ServiceProviderListingScreen.
///
/// This class ensures that the ServiceProviderListingController is created when the
/// ServiceProviderListingScreen is first loaded.
class ServiceProviderListingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ServiceProviderListingController());
  }
}
