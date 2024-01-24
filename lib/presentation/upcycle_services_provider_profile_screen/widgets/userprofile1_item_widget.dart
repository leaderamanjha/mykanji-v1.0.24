import '../controller/upcycle_services_provider_profile_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<UpcycleServicesProviderProfileController>();

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
                userprofile1ItemModelObj.username!.value,
                style: CustomTextStyles.titleSmallCabinGray90002Bold,
              ),
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 40.h),
            child: Obx(
              () => Text(
                userprofile1ItemModelObj.verificationStatus!.value,
                style: CustomTextStyles.bodyMediumGray700,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 165.h,
            child: Obx(
              () => Text(
                userprofile1ItemModelObj.reviewText!.value,
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
                  imagePath: userprofile1ItemModelObj.image!.value,
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
                    userprofile1ItemModelObj.ratingText!.value,
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
                    userprofile1ItemModelObj.date!.value,
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
