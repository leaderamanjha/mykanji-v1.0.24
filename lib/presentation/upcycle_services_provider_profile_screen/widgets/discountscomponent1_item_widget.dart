import '../controller/upcycle_services_provider_profile_controller.dart';
import '../models/discountscomponent1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class Discountscomponent1ItemWidget extends StatelessWidget {
  Discountscomponent1ItemWidget(
    this.discountscomponent1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Discountscomponent1ItemModel discountscomponent1ItemModelObj;

  var controller = Get.find<UpcycleServicesProviderProfileController>();

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
                      discountscomponent1ItemModelObj.discountImage!.value,
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
                    discountscomponent1ItemModelObj.discountText!.value,
                    style: CustomTextStyles.bodyMediumBluegray900,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Obx(
            () => Text(
              discountscomponent1ItemModelObj.mainText!.value,
              style: CustomTextStyles.bodySmallCabinBlack900,
            ),
          ),
        ],
      ),
    );
  }
}
