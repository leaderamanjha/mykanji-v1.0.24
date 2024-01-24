import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/uploded_image_screen/models/uploded_image_model.dart';/// A controller class for the UplodedImageScreen.
///
/// This class manages the state of the UplodedImageScreen, including the
/// current uplodedImageModelObj
class UplodedImageController extends GetxController {Rx<UplodedImageModel> uplodedImageModelObj = UplodedImageModel().obs;

 }
