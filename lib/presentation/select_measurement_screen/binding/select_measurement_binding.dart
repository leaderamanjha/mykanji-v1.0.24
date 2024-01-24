import '../controller/select_measurement_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectMeasurementScreen.
///
/// This class ensures that the SelectMeasurementController is created when the
/// SelectMeasurementScreen is first loaded.
class SelectMeasurementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectMeasurementController());
  }
}
