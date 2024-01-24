import '../controller/orders_controller.dart';
import '../models/orderdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mykanji/core/app_export.dart';

// ignore: must_be_immutable
class OrderdetailsItemWidget extends StatelessWidget {
  OrderdetailsItemWidget(
    this.orderdetailsItemModelObj, {
    Key? key,
    this.onTapOrderDetails,
    this.onTapTxtServiceDetails,
  }) : super(
          key: key,
        );

  OrderdetailsItemModel orderdetailsItemModelObj;

  var controller = Get.find<OrdersController>();

  VoidCallback? onTapOrderDetails;

  VoidCallback? onTapTxtServiceDetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapOrderDetails!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.fillDeeppurple50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 2.v),
            Row(
              children: [
                Obx(
                  () => Text(
                    orderdetailsItemModelObj.orderID!.value,
                    style: CustomTextStyles.bodyLargeCabinBlack900_1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Obx(
                    () => Text(
                      orderdetailsItemModelObj.itemCount!.value,
                      style: CustomTextStyles.bodyLargeCabinBlack900_1,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.v),
            Row(
              children: [
                Obx(
                  () => Text(
                    orderdetailsItemModelObj.orderStatus!.value,
                    style: CustomTextStyles.labelLargeCabinGreenA700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Obx(
                    () => Text(
                      orderdetailsItemModelObj.statusChangeDate!.value,
                      style: CustomTextStyles.labelLargeCabinGreenA700,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.v),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  onTapTxtServiceDetails!.call();
                },
                child: Container(
                  width: 213.h,
                  margin: EdgeInsets.only(right: 46.h),
                  child: Obx(
                    () => Text(
                      orderdetailsItemModelObj.serviceDetails!.value,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.43,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 23.v),
            Obx(
              () => Text(
                orderdetailsItemModelObj.priceAndDelivery!.value,
                style: CustomTextStyles.bodyMediumGray700_1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
