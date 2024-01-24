import 'controller/upper_body_controller.dart';
import 'models/upper_body_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';
import 'package:mykanji/widgets/custom_floating_text_field.dart';

class UpperBodyPage extends StatelessWidget {
  UpperBodyPage({Key? key})
      : super(
          key: key,
        );

  UpperBodyController controller =
      Get.put(UpperBodyController(UpperBodyModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Column(
                  children: [
                    _buildNeckvalue(),
                    SizedBox(height: 16.v),
                    _buildShouldervalue(),
                    SizedBox(height: 16.v),
                    _buildArmLengthvalue(),
                    SizedBox(height: 16.v),
                    _buildBicepvalue(),
                    SizedBox(height: 24.v),
                    Text(
                      "lbl_view_size_chart".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 16.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage8,
                      height: 687.v,
                      width: 412.h,
                    ),
                    SizedBox(height: 103.v),
                    SizedBox(
                      width: 108.h,
                      child: Divider(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNeckvalue() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomFloatingTextField(
        controller: controller.neckvalueController,
        labelText: "lbl_neck".tr,
        labelStyle: CustomTextStyles.bodyLargeGray900,
        hintText: "lbl_neck".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildShouldervalue() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomFloatingTextField(
        controller: controller.shouldervalueController,
        labelText: "lbl_shoulder".tr,
        labelStyle: CustomTextStyles.bodySmallRobotoGray800,
        hintText: "lbl_shoulder".tr,
        contentPadding: EdgeInsets.fromLTRB(16.h, -7.v, 16.h, 48.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildArmLengthvalue() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomFloatingTextField(
        controller: controller.armLengthvalueController,
        labelText: "lbl_arm_length".tr,
        labelStyle: CustomTextStyles.bodySmallRobotoGray800,
        hintText: "lbl_arm_length".tr,
        contentPadding: EdgeInsets.fromLTRB(16.h, -6.v, 16.h, 48.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildBicepvalue() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomFloatingTextField(
        controller: controller.bicepvalueController,
        labelText: "lbl_bicep".tr,
        labelStyle: CustomTextStyles.bodySmallRobotoGray800,
        hintText: "lbl_bicep".tr,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.fromLTRB(16.h, -6.v, 16.h, 48.v),
      ),
    );
  }
}
