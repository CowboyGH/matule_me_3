import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matule_me_3/features/auth/data/repositories/abstract_auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepository) : super(AuthInitial()) {
    on<LoginUser>(_onLoginUser);
    on<SignupUser>(_onSignupUser);
    on<SendOTP>(_onSendOTP);
    on<VerifyOTP>(_onVerifyOTP);
  }

  final AbstractAuthRepository _authRepository;

  Future<void> _onLoginUser(LoginUser event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      await _authRepository.login(event.email, event.password);
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure(message: e.toString()));
    }
  }

  Future<void> _onSignupUser(SignupUser event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      await _authRepository.signup(event.email, event.password, event.name);
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure(message: e.toString()));
    }
  }

  Future<void> _onSendOTP(SendOTP event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      await _authRepository.sendOTP(event.email);
      emit(OtpSent());
    } catch (e) {
      emit(AuthFailure(message: e.toString()));
    }
  }

  Future<void> _onVerifyOTP(VerifyOTP event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      await _authRepository.verifyOTP(event.email, event.otp);
      emit(AuthSuccess());
    } catch (e) {
      emit(AuthFailure(message: e.toString()));
    }
  }
}
