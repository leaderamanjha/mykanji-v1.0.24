import '../controller/productscreen_container_controller.dart';
import '../models/productcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_elevated_button.dart';
import 'package:mykanji/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductcardItemWidget extends StatelessWidget {
  ProductcardItemWidget(
    this.productcardItemModelObj, {
    Key? key,
    this.onek,
    this.one,
    this.wishlist,
    this.addingcart,
  }) : super(
          key: key,
        );

  ProductcardItemModel productcardItemModelObj;

  var controller = Get.find<ProductscreenContainerController>();

  VoidCallback? onek;

  VoidCallback? one;

  VoidCallback? wishlist;

  VoidCallback? addingcart;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onek!.call();
      },
      child: Card(
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
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 182.v,
                  width: 186.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMedia182x182,
                        height: 182.v,
                        width: 186.h,
                        alignment: Alignment.center,
                        onTap: () {
                          one!.call();
                        },
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
                          onTap: () {
                            wishlist!.call();
                          },
                          child: CustomImageView(
                            imagePath: ImageConstant.imgWishlistPro,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    bottom: 16.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomElevatedButton(
                        height: 33.v,
                        width: 127.h,
                        text: "lbl_add_to_cart".tr,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumSFProBluegray700,
                        onPressed: () {
                          addingcart!.call();
                        },
                        alignment: Alignment.center,
                      ),
                      SizedBox(height: 2.v),
                      Obx(
                        () => Text(
                          productcardItemModelObj.productTitle!.value,
                          style: CustomTextStyles.bodyLargeCabinGray900,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Obx(
                        () => Text(
                          productcardItemModelObj.productPrice!.value,
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
      ),
    );
  }
}
