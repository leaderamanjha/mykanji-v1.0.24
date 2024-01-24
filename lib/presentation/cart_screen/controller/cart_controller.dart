import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/cart_screen/models/cart_model.dart';import 'package:mykanji/data/models/addToCartGetAll/get_add_to_cart_get_all_resp.dart';import 'package:mykanji/data/apiClient/api_client.dart';import '../models/productlistitem_item_model.dart';/// A controller class for the CartScreen.
///
/// This class manages the state of the CartScreen, including the
/// current cartModelObj
class CartController extends GetxController {Rx<CartModel> cartModelObj = CartModel().obs;

GetAddToCartGetAllResp getAddToCartGetAllResp = GetAddToCartGetAllResp();

/// Calls the http://103.160.107.21:3000/auth/add-to-cart-get-all API with the specified request data.
///
/// The [Map] parameter represents request body
Future<void> callAddToCartGetAll() async  { try{
getAddToCartGetAllResp   =  await Get.find<ApiClient>().addToCartGetAll(headers: {'Content-type': 'application/json','Authorization' : Get.find<PrefUtils>().getToken().toString(),});
_handleAddToCartGetAllSuccess();
} on GetAddToCartGetAllResp catch(e)
{
getAddToCartGetAllResp = e;
rethrow;
} } 
/// handles the success response for the API
void _handleAddToCartGetAllSuccess() { 

var productlistitemItemModelList = <ProductlistitemItemModel>[];for (var element in getAddToCartGetAllResp.addToCarts ?? []) {var productlistitemItemModel = ProductlistitemItemModel();productlistitemItemModel.headline?.value = element.productsName ?? '';productlistitemItemModel.supportingText?.value = element.productPrice ?? 0;productlistitemItemModelList.add(productlistitemItemModel);}
cartModelObj.value.productlistitemItemList.value = productlistitemItemModelList;cartModelObj.value.price.value = getAddToCartGetAllResp.amount!.toString(); } 
/// calls the [http://103.160.107.21:3000/auth/add-to-cart-get-all] API 
///
/// It has [GetAddToCartGetAllReq] as a parameter which will be passed as a API request body
/// If the call is successful, the function calls the `_onAddToCartGetAllSuccess()` function.
/// If the call fails, the function calls the `_onAddToCartGetAllError()` function.
///
/// Throws a `NoInternetException` if there is no internet connection.
@override Future<void> onReady() async  { try {
await callAddToCartGetAll();_onAddToCartGetAllSuccess();} on GetAddToCartGetAllResp {_onAddToCartGetAllError();} on NoInternetException catch (e) {Get.rawSnackbar(message: e.toString());} catch (e) {
 //TODO: Handle generic errors
} } 
void _onAddToCartGetAllSuccess() {  } 
void _onAddToCartGetAllError() { 
 } 
 }
