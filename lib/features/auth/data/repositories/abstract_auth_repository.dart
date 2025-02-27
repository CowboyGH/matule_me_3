abstract class AbstractAuthRepository {
  Future<void> login(String email, String password);
  Future<void> signup(String email, String password, String name);
  Future<void> sendOTP(String email);
  Future<void> verifyOTP(String email, String otp);
}
