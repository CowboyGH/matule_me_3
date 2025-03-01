import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/theme/theme.dart';

class OrderCard extends StatefulWidget {
  final String time;

  const OrderCard({super.key, required this.time});

  @override
  State<OrderCard> createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              context.push('/order');
            },
            child: Container(
              height: 104,
              padding: EdgeInsets.only(left: 9, top: 9, right: 15, bottom: 10),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: [
                  Container(
                    width: 87,
                    height: 85,
                    // padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: AppColors.lightGrey,
                        borderRadius: BorderRadius.circular(16)),
                    child: Image.asset(
                      'assets/images/nike-blue.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '№ 325556516',
                              style: AppShrifts.medium14R
                                  .copyWith(color: AppColors.blue, height: 0),
                            ),
                            Text(
                              widget.time,
                              style: AppShrifts.medium14R
                                  .copyWith(color: AppColors.hint, height: 0),
                            ),
                          ],
                        ),
                        const SizedBox(height: 9),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Text(
                            'Nike Air Max 270 Essential',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppShrifts.medium14R
                                .copyWith(color: AppColors.text, height: 0),
                          ),
                        ),
                        const SizedBox(height: 9),
                        Row(
                          children: [
                            Text(
                              '\$364.95',
                              style: AppShrifts.medium14R
                                  .copyWith(color: AppColors.text, height: 0),
                            ),
                            const SizedBox(width: 39),
                            Text(
                              '\$260.00',
                              style: AppShrifts.medium14R
                                  .copyWith(color: AppColors.hint, height: 0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
