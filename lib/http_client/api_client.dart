import 'package:dio/dio.dart';
import 'package:lionman_school_of_rewilding/models/login_models.dart';

class ApiClient {
  static Dio dio = Dio();

  static Future postJSON(String url, dynamic params) async {
    Response response;
    response = await dio.post(url, data: params);
    print(response);
    LoginModel loginModel = LoginModel.fromJson(response.data);
    print("${loginModel.message}");
    print(loginModel.data);
  }
}
