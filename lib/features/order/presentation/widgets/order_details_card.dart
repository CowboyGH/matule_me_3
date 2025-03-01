import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/theme/theme.dart';

class OrderDetailsCard extends StatefulWidget {
  final String price;
  final int count;

  const OrderDetailsCard({super.key, required this.count, required this.price});

  @override
  State<OrderDetailsCard> createState() => _OrderDetailsCardState();
}

class _OrderDetailsCardState extends State<OrderDetailsCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              context.go('/order');
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
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3, bottom: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 40),
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
                                widget.price,
                                style: AppShrifts.medium14R
                                    .copyWith(color: AppColors.text, height: 0),
                              ),
                              const SizedBox(width: 31),
                              Text(
                                '${widget.count} ШТ',
                                style: AppShrifts.medium14R
                                    .copyWith(color: AppColors.hint, height: 0),
                              ),
                            ],
                          ),
                        ],
                      ),
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
