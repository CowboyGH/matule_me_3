import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/common/widgets/products_list.dart';
import 'package:matule_me_3/theme/theme.dart';

class ProductScreen extends StatefulWidget {
  final String title;
  const ProductScreen({super.key, required this.title});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool isInCart = false;

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
            'Sneaker Shop',
            style: AppShrifts.medium16R.copyWith(color: AppColors.text),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {
                  context.push('/cart');
                },
                child: Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(40)),
                    child: SvgPicture.asset(
                      'assets/icons/bag-small.svg',
                      fit: BoxFit.scaleDown,
                    )),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 20, top: 26, right: 20),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Nike Air Max 270 Essential',
                      style: AppShrifts.semibold26R
                          .copyWith(color: AppColors.text),
                    ),
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Text(
                    'Men’s Shoes',
                    style: AppShrifts.medium16R.copyWith(color: AppColors.hint),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    '₽179.39',
                    style: AppShrifts.medium24P.copyWith(color: AppColors.text),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 165,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        'assets/images/ellipse.png',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/images/nike-${widget.title}.png',
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 37),
              ProductsList(),
              const SizedBox(height: 25),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Вставка Max Air 270 Обеспечивает Непревзойденный Комфорт В Течение Всего Дня. Изящный Дизайн ........',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style:
                          AppShrifts.regular14P.copyWith(color: AppColors.hint),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Подробнее',
                      style:
                          AppShrifts.regular14P.copyWith(color: AppColors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 64),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.push('/cart');
                    },
                    child: Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                            color: AppColors.hinter.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(40)),
                        child: SvgPicture.asset(
                          'assets/icons/heart-black.svg',
                          fit: BoxFit.scaleDown,
                        )),
                  ),
                  const SizedBox(width: 18),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isInCart = !isInCart;
                        });
                      },
                      child: Container(
                          height: 52,
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/bag-small.svg',
                                fit: BoxFit.scaleDown,
                                color: AppColors.white,
                              ),
                              const SizedBox(width: 60),
                              Text(
                                isInCart ? 'Добавлено' : 'В корзину',
                                style: AppShrifts.regular14P
                                    .copyWith(color: AppColors.white),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
