import '../../../core/app_export.dart';/// This class is used in the [statelayer2_item_widget] screen.
class Statelayer2ItemModel {Statelayer2ItemModel({this.imageClass, this.headlineText, this.supportingText, this.iconButton, this.id, }) { imageClass = imageClass  ?? Rx(ImageConstant.imgContrast);headlineText = headlineText  ?? Rx("Violates Community Guidelines");supportingText = supportingText  ?? Rx("Offensive language, explicit images, or content that violates community standards.");iconButton = iconButton  ?? Rx(ImageConstant.imgInbox);id = id  ?? Rx(""); }

Rx<String>? imageClass;

Rx<String>? headlineText;

Rx<String>? supportingText;

Rx<String>? iconButton;

Rx<String>? id;

 }
