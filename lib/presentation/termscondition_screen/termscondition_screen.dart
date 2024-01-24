import 'controller/termscondition_controller.dart';import 'package:flutter/material.dart';import 'package:mykanji/core/app_export.dart';import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';import 'package:mykanji/widgets/app_bar/appbar_subtitle_one.dart';import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';class TermsconditionScreen extends GetWidget<TermsconditionController> {const TermsconditionScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: appTheme.gray5001, appBar: _buildAppBar(), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 18.v), child: Padding(padding: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 10.v), child: Column(children: [SizedBox(width: 364.h, child: Text("msg_welcome_to_our_e_commerce".tr, maxLines: 70, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyLargeSFProGray90005.copyWith(height: 1.50))), SizedBox(height: 33.v), SizedBox(width: 108.h, child: Divider())])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIcon, margin: EdgeInsets.only(left: 16.h, top: 20.v, bottom: 20.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleOne(text: "msg_terms_and_condition".tr), styleType: Style.bgFill_1); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
