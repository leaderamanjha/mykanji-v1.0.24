import '../controller/wishlist_controller.dart';
import '../models/productcard2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';
import 'package:mykanji/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Productcard2ItemWidget extends StatelessWidget {
  Productcard2ItemWidget(
    this.productcard2ItemModelObj, {
    Key? key,
    this.one,
    this.addingtocart,
  }) : super(
          key: key,
        );

  Productcard2ItemModel productcard2ItemModelObj;

  var controller = Get.find<WishlistController>();

  VoidCallback? one;

  VoidCallback? addingtocart;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.gray300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Container(
        height: 258.v,
        width: 186.h,
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgMedia182x182,
              height: 182.v,
              width: 186.h,
              alignment: Alignment.topCenter,
              onTap: () {
                one!.call();
              },
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      alignment: Alignment.centerRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgWishlistProDeepPurple500,
                      ),
                    ),
                    SizedBox(height: 113.v),
                    CustomElevatedButton(
                      height: 33.v,
                      width: 127.h,
                      text: "lbl_add_to_cart".tr,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumSFProBluegray700,
                      onPressed: () {
                        addingtocart!.call();
                      },
                      alignment: Alignment.center,
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        productcard2ItemModelObj.titleText!.value,
                        style: CustomTextStyles.bodyLargeCabinGray900,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Obx(
                      () => Text(
                        productcard2ItemModelObj.subheadText!.value,
                        style: CustomTextStyles.bodyMediumGray800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
