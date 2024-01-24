import 'controller/restore_upload_controller.dart';import 'package:flutter/material.dart';import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/productscreen_container_page/productscreen_container_page.dart';import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';import 'package:mykanji/widgets/app_bar/appbar_subtitle.dart';import 'package:mykanji/widgets/app_bar/appbar_trailing_image.dart';import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';import 'package:mykanji/widgets/custom_bottom_bar.dart';class RestoreUploadScreen extends GetWidget<RestoreUploadController> {const RestoreUploadScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: SizedBox(width: 412.h, child: Column(children: [Container(padding: EdgeInsets.all(16.h), decoration: AppDecoration.fillGray5001, child: CustomImageView(imagePath: ImageConstant.imgThumbnail, height: 656.v, width: 380.h)), SizedBox(height: 82.v), SizedBox(width: 108.h, child: Divider())])), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 56.v, leadingWidth: 33.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 13.h, top: 17.v, bottom: 18.v), onTap: () {onTapArrowLeft();}), title: AppbarSubtitle(text: "msg_upload_reference".tr, margin: EdgeInsets.only(left: 14.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgThumbsUp, margin: EdgeInsets.fromLTRB(14.h, 17.v, 14.h, 18.v))], styleType: Style.bgFill_4); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.productscreenContainerPage; case BottomBarEnum.Quote: return "/"; case BottomBarEnum.Orders: return "/"; case BottomBarEnum.Replies: return "/"; case BottomBarEnum.Cart: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.productscreenContainerPage: return ProductscreenContainerPage(); default: return DefaultWidget();} } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
