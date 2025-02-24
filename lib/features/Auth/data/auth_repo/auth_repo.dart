abstract class AuthRepo {
  Future register({
    required String username,
    required String email,
    required String phone,
    required int gender,
    required String password,
    required String matchPass,
  });
  Future login({
    required String email,
    required String password,
  });
}
