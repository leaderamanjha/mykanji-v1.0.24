import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/one_screen/models/one_model.dart';import 'package:mykanji/data/models/getProductsGetAll/get_get_products_get_all_resp.dart';import 'package:mykanji/data/apiClient/api_client.dart';import '../models/productcard1_item_model.dart';import 'package:mykanji/data/models/addToCart/post_add_to_cart_resp.dart';/// A controller class for the OneScreen.
///
/// This class manages the state of the OneScreen, including the
/// current oneModelObj
class OneController extends GetxController {Rx<OneModel> oneModelObj = OneModel().obs;

Rx<int> sliderIndex = 0.obs;

GetGetProductsGetAllResp getGetProductsGetAllResp = GetGetProductsGetAllResp();

PostAddToCartResp postAddToCartResp = PostAddToCartResp();

/// Calls the http://103.160.107.21:3000/auth/products-getall API with the specified request data.
///
/// The [Map] parameter represents request body
Future<void> callGetProductsGetAll() async  { try{
getGetProductsGetAllResp   =  await Get.find<ApiClient>().getProductsGetAll(headers: {'Content-type': 'application/json','Authorization' : Get.find<PrefUtils>().getToken().toString(),});
_handleGetProductsGetAllSuccess();
} on GetGetProductsGetAllResp catch(e)
{
getGetProductsGetAllResp = e;
rethrow;
} } 
/// handles the success response for the API
void _handleGetProductsGetAllSuccess() { 

var productcard1ItemModelList = <Productcard1ItemModel>[];for (var element in getGetProductsGetAllResp.data ?? []) {var productcard1ItemModel = Productcard1ItemModel();productcard1ItemModel.subheadText?.value = element.productPrice ?? 0;productcard1ItemModel.titleText?.value = element.productsName ?? '';productcard1ItemModelList.add(productcard1ItemModel);}
oneModelObj.value.productcard1ItemList.value = productcard1ItemModelList; } 
/// calls the [http://103.160.107.21:3000/auth/products-getall] API 
///
/// It has [GetGetProductsGetAllReq] as a parameter which will be passed as a API request body
/// If the call is successful, the function calls the `_onGetProductsGetAllSuccess()` function.
/// If the call fails, the function calls the `_onGetProductsGetAllError()` function.
///
/// Throws a `NoInternetException` if there is no internet connection.
@override Future<void> onReady() async  { try {
await callGetProductsGetAll();_onGetProductsGetAllSuccess();} on GetGetProductsGetAllResp {_onGetProductsGetAllError();} on NoInternetException catch (e) {Get.rawSnackbar(message: e.toString());} catch (e) {
 //TODO: Handle generic errors
} } 
void _onGetProductsGetAllSuccess() {  } 
void _onGetProductsGetAllError() { 
 } 
/// Calls the http://103.160.107.21:3000/auth/wishlist API with the specified request data.
///
/// The [Map] parameter represents request body
Future<void> callAddToCart(Map req) async  { try{
postAddToCartResp   =  await Get.find<ApiClient>().addToCart(headers: {'Content-type': 'application/json','Authorization' : Get.find<PrefUtils>().getToken().toString(),}, requestData: req, );
_handleAddToCartSuccess();
} on PostAddToCartResp catch(e)
{
postAddToCartResp = e;
rethrow;
} } 
/// handles the success response for the API
void _handleAddToCartSuccess() { 

oneModelObj.value.zariPureSilkPaithaniSaree.value = postAddToCartResp.message!.toString(); } 
 }
