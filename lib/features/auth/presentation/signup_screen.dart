import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:matule_me_3/theme/theme.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _visability = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                          'Регистрация',
                          style: AppShrifts.semibold32R
                              .copyWith(color: AppColors.text),
                        ),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Заполните Свои Данные Или Продолжите Через Социальные Медиа!',
                            textAlign: TextAlign.center,
                            style: AppShrifts.regular16P
                                .copyWith(color: AppColors.dark),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 35),
                  Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ваше имя',
                            style: AppShrifts.medium16R
                                .copyWith(color: AppColors.text),
                          ),
                          const SizedBox(height: 12),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty || value == '') {
                                return 'Введите Имя';
                              }
                              return null;
                            },
                            controller: _nameController,
                            cursorColor: AppColors.text,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.lightGrey,
                                contentPadding: EdgeInsets.only(
                                    left: 14, top: 16, right: 57, bottom: 16),
                                hintText: 'x' * 8,
                                hintStyle: AppShrifts.medium14P.copyWith(
                                    color: AppColors.hint.withOpacity(0.6),
                                    letterSpacing: 2),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(14))),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Email',
                            style: AppShrifts.medium16R
                                .copyWith(color: AppColors.text),
                          ),
                          const SizedBox(height: 12),
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
                          const SizedBox(height: 12),
                          Text(
                            'Пароль',
                            style: AppShrifts.medium16R
                                .copyWith(color: AppColors.text),
                          ),
                          const SizedBox(height: 12),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty || value == '') {
                                return 'Введите Пароль';
                              }
                              if (value.length < 8) {
                                return 'Длина пароля должна быть минимум 8 символов';
                              }
                              return null;
                            },
                            controller: _passwordController,
                            cursorColor: AppColors.text,
                            obscureText: !_visability,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.lightGrey,
                                contentPadding: EdgeInsets.only(
                                    left: 14, top: 0, right: 14, bottom: 0),
                                hintText: '•' * 8,
                                hintStyle: AppShrifts.medium24P.copyWith(
                                    color: AppColors.hint.withOpacity(0.6)),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _visability = !_visability;
                                      });
                                    },
                                    child: SvgPicture.asset(
                                      'assets/icons/eye.svg',
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(14))),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Container(
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                    color: AppColors.lightGrey,
                                    borderRadius: BorderRadius.circular(6)),
                                child: SvgPicture.asset(
                                  'assets/icons/apply.svg',
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Flexible(
                                child: Text(
                                  'Даю согласие на обработку персональных данных',
                                  style: AppShrifts.medium16R.copyWith(
                                      color: AppColors.hint,
                                      decoration: TextDecoration.underline),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  BlocProvider.of<AuthBloc>(context).add(
                                      SignupUser(
                                          email: _emailController.text.trim(),
                                          password:
                                              _passwordController.text.trim(),
                                          name: _nameController.text.trim()));
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.blue,
                                  minimumSize: Size(double.infinity, 50),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                              child: Text(
                                'Зарегистрироваться',
                                style: AppShrifts.medium14R
                                    .copyWith(color: AppColors.white),
                              )),
                        ],
                      )),
                ],
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Есть аккаунт? ',
                    style:
                        AppShrifts.medium16R.copyWith(color: AppColors.hint)),
                TextSpan(
                    text: 'Войти',
                    style: AppShrifts.medium16R.copyWith(color: AppColors.text),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.go('/signup');
                      })
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
