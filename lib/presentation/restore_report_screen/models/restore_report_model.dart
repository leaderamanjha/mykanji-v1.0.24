import '../../../core/app_export.dart';import 'statelayer2_item_model.dart';/// This class defines the variables used in the [restore_report_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RestoreReportModel {Rx<List<Statelayer2ItemModel>> statelayer2ItemList = Rx([Statelayer2ItemModel(imageClass:ImageConstant.imgContrast.obs,headlineText: "Violates Community Guidelines".obs,supportingText: "Offensive language, explicit images, or content that violates community standards.".obs,iconButton:ImageConstant.imgInbox.obs)]);

 }
