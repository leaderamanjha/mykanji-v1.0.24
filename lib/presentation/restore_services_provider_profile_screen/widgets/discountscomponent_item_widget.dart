import '../controller/restore_services_provider_profile_controller.dart';
import '../models/discountscomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class DiscountscomponentItemWidget extends StatelessWidget {
  DiscountscomponentItemWidget(
    this.discountscomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DiscountscomponentItemModel discountscomponentItemModelObj;

  var controller = Get.find<RestoreServicesProviderProfileController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      width: 172.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath:
                      discountscomponentItemModelObj.discountImage!.value,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  top: 2.v,
                  bottom: 3.v,
                ),
                child: Obx(
                  () => Text(
                    discountscomponentItemModelObj.discountText!.value,
                    style: CustomTextStyles.bodyMediumBluegray900,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Obx(
            () => Text(
              discountscomponentItemModelObj.mainText!.value,
              style: CustomTextStyles.bodySmallCabinBlack900,
            ),
          ),
        ],
      ),
    );
  }
}
