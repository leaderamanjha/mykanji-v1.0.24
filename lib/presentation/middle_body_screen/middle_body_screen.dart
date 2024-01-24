import 'controller/middle_body_controller.dart';import 'package:flutter/material.dart';import 'package:mykanji/core/app_export.dart';import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';import 'package:mykanji/widgets/app_bar/appbar_subtitle_one.dart';import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';import 'package:mykanji/widgets/custom_floating_text_field.dart';import 'package:mykanji/widgets/custom_outlined_button.dart';class MiddleBodyScreen extends GetWidget<MiddleBodyController> {const MiddleBodyScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 16.v), child: Padding(padding: EdgeInsets.only(bottom: 10.v), child: Column(children: [_buildFrame(), SizedBox(height: 16.v), _buildFrame1(), CustomImageView(imagePath: ImageConstant.imgImage8, height: 687.v, width: 412.h), SizedBox(height: 46.v), SizedBox(width: 108.h, child: Divider())])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIcon, margin: EdgeInsets.only(left: 16.h, top: 20.v, bottom: 20.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleOne(text: "msg_add_new_measurements".tr), styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildUpperBody() { return CustomOutlinedButton(width: 116.h, text: "lbl_upper_body".tr, buttonStyle: CustomButtonStyles.outlineGrayLR8, buttonTextStyle: CustomTextStyles.titleSmallGray800, onPressed: () {onTapUpperBody();}); } 
/// Section Widget
Widget _buildLowerBody() { return CustomOutlinedButton(width: 116.h, text: "lbl_lower_body".tr, margin: EdgeInsets.only(left: 16.h), buttonStyle: CustomButtonStyles.outlineGrayLR8, buttonTextStyle: CustomTextStyles.titleSmallGray800, onPressed: () {onTapLowerBody();}); } 
/// Section Widget
Widget _buildFrame() { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildUpperBody(), Container(width: 116.h, margin: EdgeInsets.only(left: 16.h), padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 10.v), decoration: AppDecoration.fillOnErrorContainer1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgCheckmark, height: 18.adaptSize, width: 18.adaptSize), Padding(padding: EdgeInsets.only(left: 8.h, top: 2.v), child: Text("lbl_middle_body".tr, style: CustomTextStyles.titleSmallGray90003))])), _buildLowerBody()])); } 
/// Section Widget
Widget _buildArmLength() { return CustomFloatingTextField(controller: controller.armLengthController, labelText: "lbl_arm_length".tr, labelStyle: CustomTextStyles.bodySmallRobotoGray800, hintText: "lbl_arm_length".tr, contentPadding: EdgeInsets.fromLTRB(16.h, -6.v, 16.h, 48.v)); } 
/// Section Widget
Widget _buildWrist() { return CustomFloatingTextField(controller: controller.wristController, labelText: "lbl_wrist".tr, labelStyle: CustomTextStyles.bodyLargeGray900, hintText: "lbl_wrist".tr); } 
/// Section Widget
Widget _buildShoulderToWaistFront() { return CustomFloatingTextField(controller: controller.shoulderToWaistFrontController, labelText: "msg_shoulder_to_waist".tr, labelStyle: CustomTextStyles.bodySmallRobotoGray800, hintText: "msg_shoulder_to_waist".tr, contentPadding: EdgeInsets.fromLTRB(16.h, -7.v, 16.h, 48.v)); } 
/// Section Widget
Widget _buildShoulderToWaistBack() { return CustomFloatingTextField(controller: controller.shoulderToWaistBackController, labelText: "msg_shoulder_to_waist2".tr, labelStyle: CustomTextStyles.bodySmallRobotoGray800, hintText: "msg_shoulder_to_waist2".tr, contentPadding: EdgeInsets.fromLTRB(16.h, -7.v, 16.h, 48.v)); } 
/// Section Widget
Widget _buildBust() { return CustomFloatingTextField(controller: controller.bustController, labelText: "lbl_bust".tr, labelStyle: CustomTextStyles.bodyLargeGray900, hintText: "lbl_bust".tr); } 
/// Section Widget
Widget _buildBustSeparation() { return CustomFloatingTextField(controller: controller.bustSeparationController, labelText: "lbl_bust_separation".tr, labelStyle: CustomTextStyles.bodyLargeGray900, hintText: "lbl_bust_separation".tr); } 
/// Section Widget
Widget _buildUnderBust() { return CustomFloatingTextField(controller: controller.underBustController, labelText: "lbl_under_bust".tr, labelStyle: CustomTextStyles.bodyLargeGray900, hintText: "lbl_under_bust".tr); } 
/// Section Widget
Widget _buildBustHeight() { return CustomFloatingTextField(controller: controller.bustHeightController, labelText: "lbl_bust_height".tr, labelStyle: CustomTextStyles.bodyLargeGray900, hintText: "lbl_bust_height".tr); } 
/// Section Widget
Widget _buildBackWidth() { return CustomFloatingTextField(controller: controller.backWidthController, labelText: "lbl_back_width".tr, labelStyle: CustomTextStyles.bodyLargeGray900, hintText: "lbl_back_width".tr, textInputAction: TextInputAction.done); } 
/// Section Widget
Widget _buildFrame1() { return Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v), decoration: AppDecoration.fillGray5001, child: Column(children: [_buildArmLength(), SizedBox(height: 16.v), _buildWrist(), SizedBox(height: 16.v), _buildShoulderToWaistFront(), SizedBox(height: 16.v), _buildShoulderToWaistBack(), SizedBox(height: 16.v), _buildBust(), SizedBox(height: 16.v), _buildBustSeparation(), SizedBox(height: 16.v), _buildUnderBust(), SizedBox(height: 16.v), _buildBustHeight(), SizedBox(height: 16.v), _buildBackWidth(), SizedBox(height: 24.v), Text("lbl_view_size_chart".tr, style: theme.textTheme.titleLarge), SizedBox(height: 8.v)])); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 

onTapUpperBody() { // TODO: implement Actions
 } 

onTapLowerBody() { // TODO: implement Actions
 } 
 }
