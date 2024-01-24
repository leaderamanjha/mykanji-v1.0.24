import '../controller/providerreport_controller.dart';
import '../models/statelayer1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Statelayer1ItemWidget extends StatelessWidget {
  Statelayer1ItemWidget(
    this.statelayer1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Statelayer1ItemModel statelayer1ItemModelObj;

  var controller = Get.find<ProviderreportController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillDeepPurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: statelayer1ItemModelObj.imageClass!.value,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 28.v),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 2.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      statelayer1ItemModelObj.headlineText!.value,
                      style: CustomTextStyles.bodyLargeGray90002,
                    ),
                  ),
                  SizedBox(
                    width: 248.h,
                    child: Obx(
                      () => Text(
                        statelayer1ItemModelObj.supportingText!.value,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style:
                            CustomTextStyles.bodyMediumRobotoGray700.copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 28.v,
              bottom: 28.v,
            ),
            child: Obx(
              () => CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                child: CustomImageView(
                  imagePath: statelayer1ItemModelObj.inboxIcon!.value,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
