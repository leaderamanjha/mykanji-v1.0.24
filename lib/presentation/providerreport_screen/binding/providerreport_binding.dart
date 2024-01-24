import '../controller/providerreport_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProviderreportScreen.
///
/// This class ensures that the ProviderreportController is created when the
/// ProviderreportScreen is first loaded.
class ProviderreportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProviderreportController());
  }
}
