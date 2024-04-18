import 'package:app_transport/services/dio_services.dart';
import 'package:app_transport/shared/helper/logger.dart';

class UserServices {
  static final DioServices _dioService = DioServices();
  static Future<dynamic> signIn(String email, String password) async {
    final data = {
      'email': email,
      'password': password,
    };
    logger.w(data);
    final response = await _dioService.post(endPoint: 'sign-in', data: data);
    if (response.statusCode == 200) {
      logger.w(response.data);
    } else {
      logger.w("Login fail");
    }
  }

  static Future<dynamic> signUp(String email, String password) async {
    logger.w(email);
    logger.w(password);
  }
}
