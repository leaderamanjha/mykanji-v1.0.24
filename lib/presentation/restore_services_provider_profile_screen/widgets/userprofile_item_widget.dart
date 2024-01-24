import '../controller/restore_services_provider_profile_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<RestoreServicesProviderProfileController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillDeeppurple50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      width: 276.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 40.h),
            child: Obx(
              () => Text(
                userprofileItemModelObj.username!.value,
                style: CustomTextStyles.titleSmallCabinGray90002Bold,
              ),
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 40.h),
            child: Obx(
              () => Text(
                userprofileItemModelObj.verificationStatus!.value,
                style: CustomTextStyles.bodyMediumGray700,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 165.h,
            child: Obx(
              () => Text(
                userprofileItemModelObj.reviewText!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyMedium_1.copyWith(
                  height: 1.43,
                ),
              ),
            ),
          ),
          SizedBox(height: 55.v),
          Row(
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: userprofileItemModelObj.image!.value,
                  height: 11.adaptSize,
                  width: 11.adaptSize,
                  radius: BorderRadius.circular(
                    1.h,
                  ),
                  margin: EdgeInsets.only(
                    top: 2.v,
                    bottom: 4.v,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Obx(
                  () => Text(
                    userprofileItemModelObj.ratingText!.value,
                    style: CustomTextStyles.titleSmallCabinGray90002Bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 175.h,
                  top: 2.v,
                  bottom: 1.v,
                ),
                child: Obx(
                  () => Text(
                    userprofileItemModelObj.date!.value,
                    style: CustomTextStyles.bodySmallCabinGray90002,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
