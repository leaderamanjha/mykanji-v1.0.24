import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/orders_screen/models/orders_model.dart';import 'package:mykanji/data/models/getAuthOrdersGetAll/get_get_auth_orders_get_all_resp.dart';import 'package:mykanji/data/apiClient/api_client.dart';import '../models/orderdetails_item_model.dart';/// A controller class for the OrdersScreen.
///
/// This class manages the state of the OrdersScreen, including the
/// current ordersModelObj
class OrdersController extends GetxController {Rx<OrdersModel> ordersModelObj = OrdersModel().obs;

GetGetAuthOrdersGetAllResp getGetAuthOrdersGetAllResp = GetGetAuthOrdersGetAllResp();

/// Calls the http://103.160.107.21:3000/auth/orders/get-all API with the specified request data.
///
/// The [Map] parameter represents request body
Future<void> callGetAuthOrdersGetAll() async  { try{
getGetAuthOrdersGetAllResp   =  await Get.find<ApiClient>().getAuthOrdersGetAll(headers: {'Content-type': 'application/json','Authorization' : Get.find<PrefUtils>().getToken().toString(),});
_handleGetAuthOrdersGetAllSuccess();
} on GetGetAuthOrdersGetAllResp catch(e)
{
getGetAuthOrdersGetAllResp = e;
rethrow;
} } 
/// handles the success response for the API
void _handleGetAuthOrdersGetAllSuccess() { 

var orderdetailsItemModelList = <OrderdetailsItemModel>[];for (var element in getGetAuthOrdersGetAllResp.data ?? []) {var orderdetailsItemModel = OrderdetailsItemModel();orderdetailsItemModel.orderID?.value = element.orderId ?? '';orderdetailsItemModel.orderStatus?.value = element.status ?? '';orderdetailsItemModel.serviceDetails?.value = element.product?.productsName ?? '';orderdetailsItemModel.priceAndDelivery?.value = element.product?.productPrice ?? 0;orderdetailsItemModelList.add(orderdetailsItemModel);}
ordersModelObj.value.orderdetailsItemList.value = orderdetailsItemModelList; } 
/// calls the [http://103.160.107.21:3000/auth/orders/get-all] API 
///
/// It has [GetGetAuthOrdersGetAllReq] as a parameter which will be passed as a API request body
/// If the call is successful, the function calls the `_onGetAuthOrdersGetAllSuccess()` function.
/// If the call fails, the function calls the `_onGetAuthOrdersGetAllError()` function.
///
/// Throws a `NoInternetException` if there is no internet connection.
@override Future<void> onReady() async  { try {
await callGetAuthOrdersGetAll();_onGetAuthOrdersGetAllSuccess();} on GetGetAuthOrdersGetAllResp {_onGetAuthOrdersGetAllError();} on NoInternetException catch (e) {Get.rawSnackbar(message: e.toString());} catch (e) {
 //TODO: Handle generic errors
} } 
void _onGetAuthOrdersGetAllSuccess() {  } 
void _onGetAuthOrdersGetAllError() { 
 } 
 }
