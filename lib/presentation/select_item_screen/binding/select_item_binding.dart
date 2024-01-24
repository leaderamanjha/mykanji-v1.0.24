import '../controller/select_item_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectItemScreen.
///
/// This class ensures that the SelectItemController is created when the
/// SelectItemScreen is first loaded.
class SelectItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectItemController());
  }
}
