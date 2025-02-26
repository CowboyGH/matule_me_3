import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/features/cart/presentation/widgets/product_card.dart';
import 'package:matule_me_3/theme/theme.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _count = 1;

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
          'Корзина',
          style: AppShrifts.medium16R.copyWith(color: AppColors.text),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, top: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '3 товара',
              style: AppShrifts.medium16P.copyWith(color: AppColors.text),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  width: 58,
                  height: 104,
                  decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child: SvgPicture.asset('assets/icons/plus-cart.svg'),
                      ),
                      Text(
                        _count.toString(),
                        style: AppShrifts.regular14R
                            .copyWith(color: AppColors.white),
                      ),
                      GestureDetector(
                        child: SvgPicture.asset('assets/icons/minus.svg'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                ProductCard(title: 'Nike Club Max', price: '₽584.95'),
              ],
            ),
            const SizedBox(height: 14),
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
                      'assets/icons/trash.svg',
                      fit: BoxFit.scaleDown,
                    )),
              ],
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                ProductCard(
                    title: 'Nike Air Max 270 Essential', price: '₽74.95')
              ],
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: 375,
        height: 258,
        padding: EdgeInsets.only(left: 20, top: 34, right: 20, bottom: 32),
        decoration: BoxDecoration(color: AppColors.white),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Сумма',
                  style: AppShrifts.medium16R.copyWith(color: AppColors.dark),
                ),
                Text(
                  '₽753.95',
                  style: AppShrifts.medium16P.copyWith(color: AppColors.text),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Доставка',
                  style: AppShrifts.medium16R.copyWith(color: AppColors.dark),
                ),
                Text(
                  '₽60.20',
                  style: AppShrifts.medium16P.copyWith(color: AppColors.text),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 18, bottom: 15),
              child: DottedLine(
                dashColor: AppColors.dark.withOpacity(0.5),
                dashLength: 6,
                dashGapLength: 6,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Итого',
                  style: AppShrifts.medium16R.copyWith(color: AppColors.dark),
                ),
                Text(
                  '₽814.15',
                  style: AppShrifts.medium16P.copyWith(color: AppColors.text),
                ),
              ],
            ),
            const SizedBox(height: 32),
            ElevatedButton(
                onPressed: () {
                  // context.push('/two');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blue,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                child: Text(
                  'Оформить Заказ',
                  style: AppShrifts.medium14R.copyWith(color: AppColors.white),
                )),
          ],
        ),
      ),
    );
  }
}
