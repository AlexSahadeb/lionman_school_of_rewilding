import 'package:get/get.dart';
import 'package:lionman_school_of_rewilding/http_client/api_client.dart';
import 'package:lionman_school_of_rewilding/http_client/app_config.dart';

class AuthController extends GetxController implements GetxService {
  Future login({
    required String email,
    required String password,
    required context,
  }) async {
    Map<String, dynamic> params = {};
    params["email"] = email;
    params["password"] = password;
    print(params);
    String apiUrl = AppConfig.loginUrl;
    //
    var response = ApiClient.postJSON(apiUrl, params);
    print("in auth controller = $response");
  }
}
