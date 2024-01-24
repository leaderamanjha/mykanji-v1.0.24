import '../controller/service_provider_listing_controller.dart';
import '../models/listviewlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';
import 'package:mykanji/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListviewlistItemWidget extends StatelessWidget {
  ListviewlistItemWidget(
    this.listviewlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListviewlistItemModel listviewlistItemModelObj;

  var controller = Get.find<ServiceProviderListingController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 180.v,
            width: 380.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: listviewlistItemModelObj.image!.value,
                    height: 180.v,
                    width: 380.h,
                    radius: BorderRadius.vertical(
                      top: Radius.circular(8.h),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 16.v,
                    right: 16.h,
                  ),
                  child: CustomIconButton(
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgWishlistPro,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          listviewlistItemModelObj.serviceProviderName!.value,
                          style: CustomTextStyles.titleMediumGray90002,
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Obx(
                        () => Text(
                          listviewlistItemModelObj.priceRange!.value,
                          style: CustomTextStyles.bodyMedium_1,
                        ),
                      ),
                    ],
                  ),
                ),
                CustomElevatedButton(
                  height: 28.v,
                  width: 56.h,
                  text: "lbl_4_3".tr,
                  margin: EdgeInsets.only(bottom: 20.v),
                  rightIcon: Container(
                    margin: EdgeInsets.only(left: 8.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSignalGray5001,
                      height: 13.v,
                      width: 12.h,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillTeal,
                  buttonTextStyle: CustomTextStyles.titleSmallCabinGray50,
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }
}
