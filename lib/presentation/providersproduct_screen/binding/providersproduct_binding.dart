import '../controller/providersproduct_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProvidersproductScreen.
///
/// This class ensures that the ProvidersproductController is created when the
/// ProvidersproductScreen is first loaded.
class ProvidersproductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProvidersproductController());
  }
}
