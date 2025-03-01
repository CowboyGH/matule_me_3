import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/theme/theme.dart';

class NotifiesScreen extends StatefulWidget {
  const NotifiesScreen({super.key});

  @override
  State<NotifiesScreen> createState() => _NotifiesScreenState();
}

class _NotifiesScreenState extends State<NotifiesScreen> {
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
          'Уведомления',
          style: AppShrifts.semibold16R.copyWith(color: AppColors.text),
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.only(left: 20, top: 8, right: 20),
          child: ListView.separated(
              itemBuilder: (context, index) => Container(
                    height: 128,
                    width: 335,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: AppColors.lightGrey,
                        borderRadius: BorderRadius.circular(16)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Заголовок',
                          style: AppShrifts.semibold16R
                              .copyWith(color: AppColors.text, height: 0),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Lorem ipsum dolor sit amet consectetur. Venenatis pulvinar lobortis risus consectetur morbi egestas id in bibendum. Volutpat nulla urna sit sed diam nulla.',
                          style: AppShrifts.medium10R
                              .copyWith(color: AppColors.text, height: 0),
                        ),
                        SizedBox(height: 16),
                        Text(
                          '27.01.2024, 15:42',
                          style: AppShrifts.medium10R
                              .copyWith(color: AppColors.dark, height: 0),
                        ),
                      ],
                    ),
                  ),
              separatorBuilder: (context, index) => SizedBox(height: 12),
              itemCount: 6)),
    );
  }
}
