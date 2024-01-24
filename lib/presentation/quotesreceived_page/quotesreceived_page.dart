import 'controller/quotesreceived_controller.dart';
import 'models/quotesreceived_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

class QuotesreceivedPage extends StatelessWidget {
  QuotesreceivedPage({Key? key})
      : super(
          key: key,
        );

  QuotesreceivedController controller =
      Get.put(QuotesreceivedController(QuotesreceivedModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      _buildColumn12641653(
                        quotesId: "msg_quotes_id_quotes_id".tr,
                        items: "lbl_2_items".tr,
                        quotesStatus: "msg_quotes_status".tr,
                        quotesCreationDate: "msg_quotes_creation_date".tr,
                        serviceDetails: "msg_service_type".tr,
                        serviceDetails1: "msg_service_type".tr,
                        price: "msg_price_2000_delivery".tr,
                      ),
                      SizedBox(height: 16.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.h,
                          vertical: 11.v,
                        ),
                        width: SizeUtils.width,
                        decoration: BoxDecoration(
                          color: appTheme.gray90003.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                        child: Text(
                          "lbl_place_order".tr,
                          style: CustomTextStyles.titleSmallRobotoGray50,
                        ),
                      ),
                      SizedBox(height: 18.v),
                      _buildColumn1264162516523380285(),
                      SizedBox(height: 16.v),
                      _buildColumn12641653(
                        quotesId: "msg_quotes_id_quotes_id".tr,
                        items: "lbl_2_items".tr,
                        quotesStatus: "msg_quotes_status".tr,
                        quotesCreationDate: "msg_quotes_creation_date".tr,
                        serviceDetails: "msg_service_type".tr,
                        serviceDetails1: "msg_service_type".tr,
                        price: "msg_price_2000_delivery".tr,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumn1264162516523380285() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_past_quotes_received".tr,
          style: CustomTextStyles.titleSmallRobotoBlack900,
        ),
        SizedBox(height: 16.v),
        _buildColumn12641653(
          quotesId: "msg_quotes_id_quotes_id".tr,
          items: "lbl_2_items".tr,
          quotesStatus: "msg_quotes_status".tr,
          quotesCreationDate: "msg_quotes_creation_date".tr,
          serviceDetails: "msg_service_type".tr,
          serviceDetails1: "msg_service_type".tr,
          price: "msg_price_2000_delivery".tr,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildColumn12641653({
    required String quotesId,
    required String items,
    required String quotesStatus,
    required String quotesCreationDate,
    required String serviceDetails,
    required String serviceDetails1,
    required String price,
  }) {
    return Container(
      width: 380.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillDeeppurple5001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(right: 98.h),
            child: Row(
              children: [
                Text(
                  quotesId,
                  style: CustomTextStyles.bodyLargeCabinBlack900_1.copyWith(
                    color: appTheme.black900,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    items,
                    style: CustomTextStyles.bodyLargeCabinBlack900_1.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 104.h),
            child: Row(
              children: [
                Text(
                  quotesStatus,
                  style: CustomTextStyles.labelLargeCabinGreenA700.copyWith(
                    color: appTheme.greenA700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Text(
                    quotesCreationDate,
                    style: CustomTextStyles.labelLargeCabinGreenA700.copyWith(
                      color: appTheme.greenA700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.black900.withOpacity(0.05),
            endIndent: 8.h,
          ),
          SizedBox(height: 15.v),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 213.h,
              child: Text(
                serviceDetails,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.gray900,
                  height: 1.43,
                ),
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.black900.withOpacity(0.05),
            endIndent: 8.h,
          ),
          SizedBox(height: 15.v),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 213.h,
              child: Text(
                serviceDetails1,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: appTheme.gray900,
                  height: 1.43,
                ),
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.black900.withOpacity(0.05),
            endIndent: 8.h,
          ),
          SizedBox(height: 8.v),
          Text(
            price,
            style: CustomTextStyles.bodyMediumGray700.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ],
      ),
    );
  }
}
