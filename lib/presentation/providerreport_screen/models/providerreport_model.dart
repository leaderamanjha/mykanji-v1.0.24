import '../../../core/app_export.dart';import 'statelayer1_item_model.dart';/// This class defines the variables used in the [providerreport_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProviderreportModel {Rx<List<Statelayer1ItemModel>> statelayer1ItemList = Rx([Statelayer1ItemModel(imageClass:ImageConstant.imgContrast.obs,headlineText: "Violates Community Guidelines".obs,supportingText: "Offensive language, explicit images, or content that violates community standards.".obs,inboxIcon:ImageConstant.imgInbox.obs)]);

 }
