import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/upload_image_screen/models/upload_image_model.dart';/// A controller class for the UploadImageScreen.
///
/// This class manages the state of the UploadImageScreen, including the
/// current uploadImageModelObj
class UploadImageController extends GetxController {Rx<UploadImageModel> uploadImageModelObj = UploadImageModel().obs;

 }
