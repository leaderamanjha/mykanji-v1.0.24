import '../controller/profile_controller.dart';
import '../models/listitemlistitem1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class Listitemlistitem1ItemWidget extends StatelessWidget {
  Listitemlistitem1ItemWidget(
    this.listitemlistitem1ItemModelObj, {
    Key? key,
    this.onTapTxtWishlistText,
  }) : super(
          key: key,
        );

  Listitemlistitem1ItemModel listitemlistitem1ItemModelObj;

  var controller = Get.find<ProfileController>();

  VoidCallback? onTapTxtWishlistText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Row(
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: listitemlistitem1ItemModelObj.wishlistImage!.value,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              GestureDetector(
                onTap: () {
                  onTapTxtWishlistText!.call();
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    bottom: 3.v,
                  ),
                  child: Obx(
                    () => Text(
                      listitemlistitem1ItemModelObj.wishlistText!.value,
                      style: CustomTextStyles.bodyLargeGray900,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.v),
        Divider(
          color: appTheme.whiteA70001,
        ),
      ],
    );
  }
}
