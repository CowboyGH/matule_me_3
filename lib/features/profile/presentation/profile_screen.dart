import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/theme/theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        leading: Align(
          alignment: Alignment(0.5, 0),
          child: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: SvgPicture.asset(
              'assets/icons/sliders.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        title: Text(
          'Профиль',
          style: AppShrifts.semibold16R.copyWith(color: AppColors.text),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                context.push('/edit');
              },
              child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.circular(40)),
                  child: SvgPicture.asset(
                    'assets/icons/edit.svg',
                    fit: BoxFit.scaleDown,
                  )),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 50, right: 19),
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
                ],
              ),
            ),
            SizedBox(height: 38),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(16)),
              child: Stack(
                children: [
                  RotatedBox(
                    quarterTurns: -1,
                    child: Text(
                      'Открыть',
                      textAlign: TextAlign.center,
                      style: AppShrifts.semibold12R
                          .copyWith(color: AppColors.text),
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset('assets/images/qr.png')),
                ],
              ),
            ),
            SizedBox(height: 19),
            Form(
                // key: _formKey,
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Имя',
                  textAlign: TextAlign.center,
                  style: AppShrifts.medium16R.copyWith(color: AppColors.text),
                ),
                SizedBox(height: 19),
                TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                      hintText: 'Emmanuel',
                      hintStyle:
                          AppShrifts.regular14P.copyWith(color: AppColors.text),
                      filled: true,
                      fillColor: AppColors.lightGrey,
                      contentPadding: EdgeInsets.only(
                          left: 14, top: 16, right: 57, bottom: 16),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(14))),
                ),
                SizedBox(height: 17),
                Text(
                  'Фамилия',
                  textAlign: TextAlign.center,
                  style: AppShrifts.medium16R.copyWith(color: AppColors.text),
                ),
                SizedBox(height: 20),
                TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                      hintText: 'Oyiboke',
                      hintStyle:
                          AppShrifts.regular14P.copyWith(color: AppColors.text),
                      filled: true,
                      fillColor: AppColors.lightGrey,
                      contentPadding: EdgeInsets.only(
                          left: 14, top: 16, right: 57, bottom: 16),
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
                  readOnly: true,
                  decoration: InputDecoration(
                      hintText: 'Nigeria',
                      hintStyle:
                          AppShrifts.regular14P.copyWith(color: AppColors.text),
                      filled: true,
                      fillColor: AppColors.lightGrey,
                      contentPadding: EdgeInsets.only(
                          left: 14, top: 16, right: 57, bottom: 16),
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
                  readOnly: true,
                  decoration: InputDecoration(
                      label: Row(
                        children: [
                          Text(
                            '+234',
                            textAlign: TextAlign.center,
                            style: AppShrifts.regular16R
                                .copyWith(color: AppColors.hint),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: SvgPicture.asset(
                              'assets/icons/arrow-down.svg',
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          Text(
                            '811-732-5298',
                            textAlign: TextAlign.center,
                            style: AppShrifts.regular14R
                                .copyWith(color: AppColors.text),
                          ),
                        ],
                      ),
                      filled: true,
                      fillColor: AppColors.lightGrey,
                      contentPadding: EdgeInsets.only(
                          left: 14, top: 16, right: 57, bottom: 16),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(14))),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
