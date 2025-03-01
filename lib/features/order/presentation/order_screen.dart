import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/features/order/presentation/widgets/order_details_card.dart';
import 'package:matule_me_3/theme/theme.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        backgroundColor: AppColors.lightGrey,
        surfaceTintColor: AppColors.lightGrey,
        leading: Align(
          alignment: Alignment(2, 0),
          child: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(40)),
                child: SvgPicture.asset(
                  'assets/icons/arrow-left.svg',
                  fit: BoxFit.scaleDown,
                )),
          ),
        ),
        title: Text(
          '325556516',
          style: AppShrifts.medium16R.copyWith(color: AppColors.text),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, top: 16, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '7 мин назад',
              style: AppShrifts.medium14P.copyWith(color: AppColors.hint),
            ),
            const SizedBox(height: 16),
            OrderDetailsCard(count: 1, price: '₽814.15'),
            const SizedBox(height: 12),
            OrderDetailsCard(count: 2, price: '₽1200.10'),
            const SizedBox(height: 12),
            Container(
              height: 425,
              width: 335,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Контактная информация',
                    style: AppShrifts.medium14P.copyWith(
                      color: AppColors.text,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: AppColors.lightGrey,
                              borderRadius: BorderRadius.circular(12)),
                          child: SvgPicture.asset(
                            'assets/icons/mail.svg',
                            fit: BoxFit.scaleDown,
                          )),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'emmanuel@gmail.com',
                            style: AppShrifts.medium14P
                                .copyWith(color: AppColors.text),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Email',
                            style: AppShrifts.medium12P
                                .copyWith(color: AppColors.hint),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: AppColors.lightGrey,
                              borderRadius: BorderRadius.circular(12)),
                          child: SvgPicture.asset(
                            'assets/icons/phone.svg',
                            fit: BoxFit.scaleDown,
                          )),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '+234-811-732-5298',
                            style: AppShrifts.medium14P
                                .copyWith(color: AppColors.text),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Телефон',
                            style: AppShrifts.medium12P
                                .copyWith(color: AppColors.hint),
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Адрес',
                          style: AppShrifts.medium14P
                              .copyWith(color: AppColors.text),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12, bottom: 16),
                          child: Text(
                            '1082 Аэропорт, Нигерии',
                            style: AppShrifts.medium12P
                                .copyWith(color: AppColors.hint),
                          ),
                        ),
                        Image.asset(
                          'assets/images/map.png',
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Способ оплаты',
                        style: AppShrifts.medium14P
                            .copyWith(color: AppColors.text),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: AppColors.lightGrey,
                                  borderRadius: BorderRadius.circular(12)),
                              child: SvgPicture.asset(
                                'assets/icons/brand.svg',
                                fit: BoxFit.scaleDown,
                              )),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'DbL Card',
                                style: AppShrifts.medium14P
                                    .copyWith(color: AppColors.text),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '**** **** 0696 4629',
                                style: AppShrifts.medium12P
                                    .copyWith(color: AppColors.hint),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
