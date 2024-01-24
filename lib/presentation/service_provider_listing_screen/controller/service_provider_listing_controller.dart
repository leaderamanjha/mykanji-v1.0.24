import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/service_provider_listing_screen/models/service_provider_listing_model.dart';import 'package:mykanji/data/models/authServiceCategoryGetAll/get_auth_service_category_get_all_resp.dart';import 'package:mykanji/data/apiClient/api_client.dart';/// A controller class for the ServiceProviderListingScreen.
///
/// This class manages the state of the ServiceProviderListingScreen, including the
/// current serviceProviderListingModelObj
class ServiceProviderListingController extends GetxController {Rx<ServiceProviderListingModel> serviceProviderListingModelObj = ServiceProviderListingModel().obs;

GetAuthServiceCategoryGetAllResp getAuthServiceCategoryGetAllResp = GetAuthServiceCategoryGetAllResp();

/// Calls the http://103.160.107.21:3000/auth/service/category-get-all API with the specified request data.
///
/// The [Map] parameter represents request body
Future<void> callAuthServiceCategoryGetAll() async  { try{
getAuthServiceCategoryGetAllResp   =  await Get.find<ApiClient>().authServiceCategoryGetAll(headers: {'Content-type': 'application/json','Authorization' : Get.find<PrefUtils>().getToken().toString(),});
_handleAuthServiceCategoryGetAllSuccess();
} on GetAuthServiceCategoryGetAllResp catch(e)
{
getAuthServiceCategoryGetAllResp = e;
rethrow;
} } 
/// handles the success response for the API
void _handleAuthServiceCategoryGetAllSuccess() { 

Get.find<PrefUtils>().setServiceProviderListing(getAuthServiceCategoryGetAllResp.data!); } 
/// calls the [http://103.160.107.21:3000/auth/service/category-get-all] API 
///
/// It has [GetAuthServiceCategoryGetAllReq] as a parameter which will be passed as a API request body
/// If the call is successful, the function calls the `_onAuthServiceCategoryGetAllSuccess()` function.
/// If the call fails, the function calls the `_onAuthServiceCategoryGetAllError()` function.
///
/// Throws a `NoInternetException` if there is no internet connection.
@override Future<void> onReady() async  { try {
await callAuthServiceCategoryGetAll();_onAuthServiceCategoryGetAllSuccess();} on GetAuthServiceCategoryGetAllResp {_onAuthServiceCategoryGetAllError();} on NoInternetException catch (e) {Get.rawSnackbar(message: e.toString());} catch (e) {
 //TODO: Handle generic errors
} } 
void _onAuthServiceCategoryGetAllSuccess() {  } 
void _onAuthServiceCategoryGetAllError() { 
 } 
 }
