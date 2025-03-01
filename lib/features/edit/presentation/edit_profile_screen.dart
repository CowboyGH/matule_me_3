import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/theme/theme.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 86, right: 76),
          child: ElevatedButton(
              onPressed: () {
                context.pop();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.blue,
                  minimumSize: Size(double.infinity, 32),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              child: Text(
                'Сохранить',
                style: AppShrifts.medium14R.copyWith(color: AppColors.white),
              )),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 43, right: 17),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset('assets/images/photo.png'),
                  SizedBox(height: 8),
                  Text(
                    'Emmanuel Oyiboke',
                    textAlign: TextAlign.center,
                    style: AppShrifts.bold20R.copyWith(color: AppColors.text),
                  ),
                  Text(
                    'Изменить фото профиля',
                    textAlign: TextAlign.center,
                    style:
                        AppShrifts.semibold12R.copyWith(color: AppColors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Form(
                  // key: _formKey,
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Имя',
                    textAlign: TextAlign.center,
                    style: AppShrifts.medium16R.copyWith(color: AppColors.text),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Emmanuel',
                        hintStyle: AppShrifts.regular14P
                            .copyWith(color: AppColors.text),
                        filled: true,
                        fillColor: AppColors.lightGrey,
                        contentPadding: EdgeInsets.only(
                            left: 14, top: 16, right: 57, bottom: 16),
                        suffixIcon: SvgPicture.asset(
                          'assets/icons/apply-blue.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14))),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Фамилия',
                    textAlign: TextAlign.center,
                    style: AppShrifts.medium16R.copyWith(color: AppColors.text),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Oyiboke',
                        hintStyle: AppShrifts.regular14P
                            .copyWith(color: AppColors.text),
                        filled: true,
                        fillColor: AppColors.lightGrey,
                        contentPadding: EdgeInsets.only(
                            left: 14, top: 16, right: 57, bottom: 16),
                        suffixIcon: SvgPicture.asset(
                          'assets/icons/apply-blue.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14))),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Адрес',
                    textAlign: TextAlign.center,
                    style: AppShrifts.medium16R.copyWith(color: AppColors.text),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Nigeria',
                        hintStyle: AppShrifts.regular14P
                            .copyWith(color: AppColors.text),
                        filled: true,
                        fillColor: AppColors.lightGrey,
                        contentPadding: EdgeInsets.only(
                            left: 14, top: 16, right: 57, bottom: 16),
                        suffixIcon: SvgPicture.asset(
                          'assets/icons/apply-blue.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14))),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Телефон',
                    textAlign: TextAlign.center,
                    style: AppShrifts.medium16R.copyWith(color: AppColors.text),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: '+7 811-732-5298',
                        hintStyle: AppShrifts.regular14P
                            .copyWith(color: AppColors.text),
                        filled: true,
                        fillColor: AppColors.lightGrey,
                        contentPadding: EdgeInsets.only(
                            left: 14, top: 16, right: 57, bottom: 16),
                        suffixIcon: SvgPicture.asset(
                          'assets/icons/apply-blue.svg',
                          fit: BoxFit.scaleDown,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14))),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
