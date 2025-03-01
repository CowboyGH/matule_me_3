import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/theme/theme.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Stack(
        children: [
          Align(
              alignment: Alignment(13.6, 0.1),
              child: Image.asset('assets/images/home.png')),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 78),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/photo.png'),
                      SizedBox(height: 15),
                      Text(
                        'Эмануэль Кверти',
                        style:
                            AppShrifts.bold20R.copyWith(color: AppColors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.push('/profile');
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/person.svg'),
                          SizedBox(width: 27),
                          Text(
                            'Профиль',
                            style: AppShrifts.medium16R
                                .copyWith(color: AppColors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        context.push('/cart');
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/bag-white.svg'),
                          SizedBox(width: 27),
                          Text(
                            'Корзина',
                            style: AppShrifts.medium16R
                                .copyWith(color: AppColors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        context.push('/favorites');
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/heart-white.svg'),
                          SizedBox(width: 27),
                          Text(
                            'Избранное',
                            style: AppShrifts.medium16R
                                .copyWith(color: AppColors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        context.go('/orders');
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/car.svg'),
                          SizedBox(width: 27),
                          Text(
                            'Заказы',
                            style: AppShrifts.medium16R
                                .copyWith(color: AppColors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        context.go('/notifies');
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/notify.svg'),
                          SizedBox(width: 27),
                          Text(
                            'Уведомления',
                            style: AppShrifts.medium16R
                                .copyWith(color: AppColors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        context.push('/settings');
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/settings.svg'),
                          SizedBox(width: 27),
                          Text(
                            'Настройки',
                            style: AppShrifts.medium16R
                                .copyWith(color: AppColors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 38, bottom: 30),
                      child: Divider(
                        height: 0,
                        color: AppColors.lightGrey.withOpacity(0.23),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.go('/login');
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/door.svg'),
                          SizedBox(width: 27),
                          Text(
                            'Выйти',
                            style: AppShrifts.medium16R
                                .copyWith(color: AppColors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
