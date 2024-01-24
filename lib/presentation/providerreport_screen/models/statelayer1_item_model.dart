import '../../../core/app_export.dart';/// This class is used in the [statelayer1_item_widget] screen.
class Statelayer1ItemModel {Statelayer1ItemModel({this.imageClass, this.headlineText, this.supportingText, this.inboxIcon, this.id, }) { imageClass = imageClass  ?? Rx(ImageConstant.imgContrast);headlineText = headlineText  ?? Rx("Violates Community Guidelines");supportingText = supportingText  ?? Rx("Offensive language, explicit images, or content that violates community standards.");inboxIcon = inboxIcon  ?? Rx(ImageConstant.imgInbox);id = id  ?? Rx(""); }

Rx<String>? imageClass;

Rx<String>? headlineText;

Rx<String>? supportingText;

Rx<String>? inboxIcon;

Rx<String>? id;

 }
