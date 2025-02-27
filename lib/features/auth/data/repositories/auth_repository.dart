import 'package:get_it/get_it.dart';
import 'package:matule_me_3/features/auth/data/repositories/abstract_auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepository implements AbstractAuthRepository {
  final supabase = GetIt.I<Supabase>().client.auth;

  @override
  Future<void> login(String email, String password) async {
    await supabase.signInWithPassword(email: email, password: password);
  }

  @override
  Future<void> signup(String email, String password, String name) async {
    await supabase
        .signUp(email: email, password: password, data: {'name': name});
  }

  @override
  Future<void> sendOTP(String email) async {
    await supabase.signInWithOtp(email: email);
  }

  @override
  Future<void> verifyOTP(String email, String otp) async {
    await supabase.verifyOTP(email: email, token: otp, type: OtpType.recovery);
  }
}
