import 'package:mykanji/core/app_export.dart';import 'package:mykanji/presentation/profile_details_edit_screen/models/profile_details_edit_model.dart';import 'package:mykanji/data/models/getAuthAccountGet65a23eb642a092a4e2eee163/get_get_auth_account_get65a23eb642a092a4e2eee163_resp.dart';import 'package:mykanji/data/apiClient/api_client.dart';/// A controller class for the ProfileDetailsEditScreen.
///
/// This class manages the state of the ProfileDetailsEditScreen, including the
/// current profileDetailsEditModelObj
class ProfileDetailsEditController extends GetxController {Rx<ProfileDetailsEditModel> profileDetailsEditModelObj = ProfileDetailsEditModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

Rx<bool> isSelectedSwitch1 = false.obs;

GetGetAuthAccountGet65a23eb642a092a4e2eee163Resp getGetAuthAccountGet65a23eb642a092a4e2eee163Resp = GetGetAuthAccountGet65a23eb642a092a4e2eee163Resp();

/// Calls the http://103.160.107.21:3000/auth/account-get/65a23eb642a092a4e2eee163 API with the specified request data.
///
/// The [Map] parameter represents request body
Future<void> callGetAuthAccountGet65a23eb642a092a4e2eee163() async  { try{
getGetAuthAccountGet65a23eb642a092a4e2eee163Resp   =  await Get.find<ApiClient>().getAuthAccountGet65a23eb642a092a4e2eee163(headers: {'Content-type': 'application/json','Authorization' : Get.find<PrefUtils>().getToken().toString(),});
_handleGetAuthAccountGet65a23eb642a092a4e2eee163Success();
} on GetGetAuthAccountGet65a23eb642a092a4e2eee163Resp catch(e)
{
getGetAuthAccountGet65a23eb642a092a4e2eee163Resp = e;
rethrow;
} } 
/// handles the success response for the API
void _handleGetAuthAccountGet65a23eb642a092a4e2eee163Success() { 

profileDetailsEditModelObj.value.text1.value = getGetAuthAccountGet65a23eb642a092a4e2eee163Resp.data!.accountLastName!.toString();profileDetailsEditModelObj.value.text.value = getGetAuthAccountGet65a23eb642a092a4e2eee163Resp.data!.accountFirstName!.toString();profileDetailsEditModelObj.value.text12.value = getGetAuthAccountGet65a23eb642a092a4e2eee163Resp.data!.accountMobileNo!.toString();profileDetailsEditModelObj.value.text123.value = getGetAuthAccountGet65a23eb642a092a4e2eee163Resp.data!.accountAltMobileNo!.toString();profileDetailsEditModelObj.value.text1234.value = getGetAuthAccountGet65a23eb642a092a4e2eee163Resp.data!.accountEmail!.toString();profileDetailsEditModelObj.value.text12345.value = getGetAuthAccountGet65a23eb642a092a4e2eee163Resp.data!.accountAddressOne!.toString();profileDetailsEditModelObj.value.text123456.value = getGetAuthAccountGet65a23eb642a092a4e2eee163Resp.data!.accountCityOne!.toString();profileDetailsEditModelObj.value.text1234567.value = getGetAuthAccountGet65a23eb642a092a4e2eee163Resp.data!.accountPinOne!.toString();profileDetailsEditModelObj.value.text12345678.value = getGetAuthAccountGet65a23eb642a092a4e2eee163Resp.data!.accountAddressTwo!.toString();profileDetailsEditModelObj.value.text123456789.value = getGetAuthAccountGet65a23eb642a092a4e2eee163Resp.data!.accountCityTwo!.toString();profileDetailsEditModelObj.value.text1234567.value = getGetAuthAccountGet65a23eb642a092a4e2eee163Resp.data!.accountPinTwo!.toString(); } 
/// calls the [http://103.160.107.21:3000/auth/account-get/65a23eb642a092a4e2eee163] API 
///
/// It has [GetGetAuthAccountGet65a23eb642a092a4e2eee163Req] as a parameter which will be passed as a API request body
/// If the call is successful, the function calls the `_onGetAuthAccountGet65a23eb642a092a4e2eee163Success()` function.
/// If the call fails, the function calls the `_onGetAuthAccountGet65a23eb642a092a4e2eee163Error()` function.
///
/// Throws a `NoInternetException` if there is no internet connection.
@override Future<void> onReady() async  { try {
await callGetAuthAccountGet65a23eb642a092a4e2eee163();_onGetAuthAccountGet65a23eb642a092a4e2eee163Success();} on GetGetAuthAccountGet65a23eb642a092a4e2eee163Resp {_onGetAuthAccountGet65a23eb642a092a4e2eee163Error();} on NoInternetException catch (e) {Get.rawSnackbar(message: e.toString());} catch (e) {
 //TODO: Handle generic errors
} } 
void _onGetAuthAccountGet65a23eb642a092a4e2eee163Success() {  } 
void _onGetAuthAccountGet65a23eb642a092a4e2eee163Error() { 
 } 
 }
