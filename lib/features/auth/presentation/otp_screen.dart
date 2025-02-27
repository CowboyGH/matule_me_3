import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:matule_me_3/theme/theme.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OtpScreen extends StatefulWidget {
  final String email;
  const OtpScreen({super.key, required this.email});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSuccess) {
            context.go('/home');
          }
          if (state is AuthFailure) {
            print(state.message);
          }
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, top: 50, right: 20, bottom: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  context.pop();
                },
                child: Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: AppColors.lightGrey,
                        borderRadius: BorderRadius.circular(40)),
                    child: SvgPicture.asset(
                      'assets/icons/arrow-left.svg',
                      fit: BoxFit.scaleDown,
                    )),
              ),
              const SizedBox(height: 11),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'OTP Проверка',
                      style: AppShrifts.semibold32R
                          .copyWith(color: AppColors.text),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'Пожалуйста, Проверьте Свою Электронную Почту, Чтобы Увидеть Код Подтверждения',
                        textAlign: TextAlign.center,
                        style: AppShrifts.regular16P
                            .copyWith(color: AppColors.dark),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'OTP Код',
                    style:
                        AppShrifts.semibold21R.copyWith(color: AppColors.text),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: OtpPinField(
                      onSubmit: (text) {
                        BlocProvider.of<AuthBloc>(context)
                            .add(VerifyOTP(email: widget.email, otp: text));
                      },
                      onChange: (text) {},
                      fieldHeight: 99,
                      fieldWidth: 46,
                      maxLength: 6,
                      showCursor: false,
                      otpPinFieldStyle: OtpPinFieldStyle(
                        fieldBorderRadius: 12,
                        fieldBorderWidth: 1,
                        textStyle: AppShrifts.semibold18P
                            .copyWith(color: AppColors.text),
                        activeFieldBorderColor: AppColors.red,
                        defaultFieldBorderColor: Colors.transparent,
                        defaultFieldBackgroundColor: AppColors.lightGrey,
                        activeFieldBackgroundColor: AppColors.lightGrey,
                      ),
                      otpPinFieldDecoration: OtpPinFieldDecoration.custom,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          BlocProvider.of<AuthBloc>(context)
                              .add(SendOTP(email: widget.email));
                        },
                        child: Text(
                          'Отправить заново',
                          style: AppShrifts.regular12R
                              .copyWith(color: AppColors.dark),
                        ),
                      ),
                      Text(
                        '00:30',
                        style: AppShrifts.regular12R
                            .copyWith(color: AppColors.dark),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
