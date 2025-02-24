import 'package:doc_doc/core/network/api_constant.dart';
import 'package:doc_doc/core/network/api_helper.dart';
import 'package:doc_doc/features/Auth/data/auth_repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  ApiHelper apiHelper = ApiHelper();
  @override
  Future login({
    required String email,
    required String password,
  }) async {
    final response =
        await apiHelper.post('${ApiConstant.baseUrl} ${ApiConstant.register}', {
      'email': email,
      'password': password,
    });
    return response;
  }

  @override
  Future register({
    required String username,
    required String email,
    required String phone,
    required int gender,
    required String password,
    required String matchPass,
  }) async {
    final response =
        await apiHelper.post('${ApiConstant.baseUrl} ${ApiConstant.register}', {
      'name': username,
      'email': email,
      'phone': phone,
      'gender': gender,
      'password': password,
      'password_confirmation': matchPass,
    });
    return response;
  }
}
