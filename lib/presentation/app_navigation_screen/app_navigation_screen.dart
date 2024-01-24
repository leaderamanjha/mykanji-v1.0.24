import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Sign up One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "SignUpOtp".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signupotpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "LoginTwo".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logintwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "LoginWithNumber".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginwithnumberScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "LoginOtp".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginotpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ForgotPassword".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotpasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ForgetPasswordOtp".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.forgetpasswordotpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ResetPassword".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetpasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ShopingCategory - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.shopingcategoryTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ProductScreen - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.productscreenContainer1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "one".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.oneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Report".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reportScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "QuotesReceived - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.quotesreceivedTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cart".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cartScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Checkout Page".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.checkoutPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Ongoing Order One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ongoingOrderOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Rejected  Order".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.rejectedOrderScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Return/Refund".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.returnRefundScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "orders".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ordersScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Delivered Orders".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.deliveredOrdersScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Review".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reviewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Return/Refund One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.returnRefundOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Ongoing Order".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ongoingOrderScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Help and Support".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.helpAndSupportScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Privacy Policy".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyPolicyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "TermsCondition".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.termsconditionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Feedback".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.feedbackScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "About Us".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.aboutUsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "MyMeasurment".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mymeasurmentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Upper Body - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.upperBodyTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Service Provider Listing".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.serviceProviderListingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ProvidersProduct".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.providersproductScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "ProviderReport".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.providerreportScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Input form".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.inputFormScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Select Item".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectItemScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Select Measurement".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.selectMeasurementScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Upload Image".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.uploadImageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Uploded Image".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.uplodedImageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Final select Upcycle".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.finalSelectUpcycleScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "RestoreServiceProvider".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.restoreserviceproviderScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Restore Services Provider Profile".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.restoreServicesProviderProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Restore report".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.restoreReportScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Stain Removel".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.stainRemovelScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Restore Upload".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.restoreUploadScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Final Restore".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.finalRestoreScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Wishlist".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.wishlistScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login and Security".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.loginAndSecurityScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile Details Edit".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profileDetailsEditScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile details Save".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profileDetailsSaveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Middle Body".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.middleBodyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Upcycle Services Provider Profile".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.upcycleServicesProviderProfileScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
