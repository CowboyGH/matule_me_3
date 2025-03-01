import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/features/cart/presentation/widgets/product_card.dart';
import 'package:matule_me_3/features/orders/presentation/widgets/order_card.dart';
import 'package:matule_me_3/theme/theme.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
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
          'Заказы',
          style: AppShrifts.medium16R.copyWith(color: AppColors.text),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, top: 16, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Недавний',
              style: AppShrifts.medium18P.copyWith(color: AppColors.text),
            ),
            const SizedBox(height: 16),
            OrderCard(time: '7 мин назад'),
            const SizedBox(height: 12),
            OrderCard(time: '7 мин назад'),
            const SizedBox(height: 24),
            Text(
              'Вчера',
              style: AppShrifts.medium18P.copyWith(color: AppColors.text),
            ),
            const SizedBox(height: 28),
            OrderCard(time: '10:23'),
            const SizedBox(height: 12),
            Row(
              children: [
                ProductCard(title: 'Nike Air Max 200', price: '₽94.05'),
                const SizedBox(width: 10),
                Container(
                    width: 58,
                    height: 104,
                    decoration: BoxDecoration(
                        color: AppColors.red,
                        borderRadius: BorderRadius.circular(8)),
                    child: SvgPicture.asset(
                      'assets/icons/stop.svg',
                      fit: BoxFit.scaleDown,
                    )),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Container(
                    width: 58,
                    height: 104,
                    decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.circular(8)),
                    child: SvgPicture.asset(
                      'assets/icons/reload.svg',
                      fit: BoxFit.scaleDown,
                    )),
                const SizedBox(width: 10),
                ProductCard(title: 'Nike Club Max', price: '₽584.95'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
