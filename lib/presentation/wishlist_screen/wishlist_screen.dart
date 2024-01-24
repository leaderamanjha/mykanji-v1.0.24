import '../wishlist_screen/widgets/productcard2_item_widget.dart';import 'controller/wishlist_controller.dart';import 'models/productcard2_item_model.dart';import 'package:flutter/material.dart';import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/productscreen_container_page/productscreen_container_page.dart';import 'package:mykanji/widgets/app_bar/appbar_leading_image.dart';import 'package:mykanji/widgets/app_bar/appbar_subtitle_four.dart';import 'package:mykanji/widgets/app_bar/custom_app_bar.dart';import 'package:mykanji/widgets/custom_bottom_bar.dart';import 'package:mykanji/data/models/addToCart/post_add_to_cart_req.dart';import 'package:mykanji/data/models/addToCart/post_add_to_cart_resp.dart';class WishlistScreen extends GetWidget<WishlistController> {const WishlistScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Container(width: 412.h, padding: EdgeInsets.symmetric(horizontal: 12.h), child: Column(children: [SizedBox(height: 28.v), _buildProductCard(), Spacer(), SizedBox(width: 108.h, child: Divider())])), bottomNavigationBar: _buildBottomBar())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIcon, margin: EdgeInsets.only(left: 16.h, top: 20.v, bottom: 20.v), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarSubtitleFour(text: "lbl_wishlist".tr), styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildProductCard() { return Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 259.v, crossAxisCount: 2, mainAxisSpacing: 16.h, crossAxisSpacing: 16.h), physics: NeverScrollableScrollPhysics(), itemCount: controller.wishlistModelObj.value.productcard2ItemList.value.length, itemBuilder: (context, index) {Productcard2ItemModel model = controller.wishlistModelObj.value.productcard2ItemList.value[index]; return Productcard2ItemWidget(model, one: () {one();}, addingtocart: () {addingtocart();});})); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.productscreenContainerPage; case BottomBarEnum.Quote: return "/"; case BottomBarEnum.Orders: return "/"; case BottomBarEnum.Replies: return "/"; case BottomBarEnum.Cart: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.productscreenContainerPage: return ProductscreenContainerPage(); default: return DefaultWidget();} } 
/// Navigates to the oneScreen when the action is triggered.
one() { Get.toNamed(AppRoutes.oneScreen); } 
/// calls the [http://103.160.107.21:3000/auth/wishlist] API 
///
/// It has [PostAddToCartReq] as a parameter which will be passed as a API request body
/// If the call is successful, the function calls the `_onAddingtocartSuccess()` function.
/// If the call fails, the function calls the `_onAddingtocartError()` function.
///
/// Throws a `NoInternetException` if there is no internet connection.
Future<void> addingtocart() async  { PostAddToCartReq postAddToCartReq = PostAddToCartReq(productId: Get.find<PrefUtils>().getToken()); try {await controller.callAddToCart(postAddToCartReq.toJson()); _onAddingtocartSuccess();} on PostAddToCartResp {_onAddingtocartError();} on NoInternetException catch (e) {Get.rawSnackbar(message: e.toString());} catch (e) {} } 
/// Displays a snackBar message when the action is triggered.
/// The raw snackbar display the specified message `product adding to cart` using the Get package.
void _onAddingtocartSuccess() { Get.rawSnackbar(message: "product adding to cart"); } 
void _onAddingtocartError() {  } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
