import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:matule_me_3/theme/theme.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is OtpSent) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: AppColors.white,
                insetPadding: EdgeInsets.symmetric(horizontal: 20),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                content: Container(
                  height: 196 - 50,
                  width: 335,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    children: [
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(40)),
                        child: SvgPicture.asset(
                          'assets/icons/email.svg',
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Проверьте Ваш Email',
                        style: AppShrifts.semibold16R
                            .copyWith(color: AppColors.text),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Мы Отправили Код Восстановления Пароля На Вашу Электронную Почту.',
                        textAlign: TextAlign.center,
                        style: AppShrifts.regular16P
                            .copyWith(color: AppColors.dark),
                      ),
                    ],
                  ),
                ),
              ),
            );
            Future.delayed(Durations.extralong4, () {
              context.push('/otp/${_emailController.text.trim()}');
            });
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
                      'Забыл Пароль',
                      style: AppShrifts.semibold32R
                          .copyWith(color: AppColors.text),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Text(
                        'Введите Cвою Учетную Запись Для Сброса',
                        textAlign: TextAlign.center,
                        style: AppShrifts.regular16P
                            .copyWith(color: AppColors.dark),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty || value == '') {
                            return 'Введите Email';
                          }
                          return null;
                        },
                        controller: _emailController,
                        cursorColor: AppColors.text,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.lightGrey,
                            contentPadding: EdgeInsets.only(
                                left: 14, top: 16, right: 57, bottom: 16),
                            hintText: 'xyz@gmail.com',
                            hintStyle: AppShrifts.medium14P.copyWith(
                                color: AppColors.hint.withOpacity(0.6)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(14))),
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              BlocProvider.of<AuthBloc>(context).add(
                                  SendOTP(email: _emailController.text.trim()));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.blue,
                              minimumSize: Size(double.infinity, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          child: Text(
                            'Отправить',
                            style: AppShrifts.medium14R
                                .copyWith(color: AppColors.white),
                          )),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
