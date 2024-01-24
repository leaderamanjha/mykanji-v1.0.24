import '../../../core/app_export.dart';/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {UserprofileItemModel({this.username, this.verificationStatus, this.reviewText, this.image, this.ratingText, this.date, this.id, }) { username = username  ?? Rx("Volker Forster");verificationStatus = verificationStatus  ?? Rx("Verified Buyer");reviewText = reviewText  ?? Rx("It is okay, but not “premium”.\nDon’t get...");image = image  ?? Rx(ImageConstant.imgStar9);ratingText = ratingText  ?? Rx("4.3");date = date  ?? Rx("May 27");id = id  ?? Rx(""); }

Rx<String>? username;

Rx<String>? verificationStatus;

Rx<String>? reviewText;

Rx<String>? image;

Rx<String>? ratingText;

Rx<String>? date;

Rx<String>? id;

 }
