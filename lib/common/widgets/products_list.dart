import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/theme/theme.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({super.key});

  @override
  State<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  final List<String> _products = ['hero', 'gradient', '270', 'big', 'max'];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: ListView.separated(
        itemCount: _products.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 14),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {},
          child: GestureDetector(
            onTap: () {
              context.push('/product/${_products[index]}');
            },
            child: Container(
                height: 56,
                width: 56,
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Image.asset(
                  'assets/images/nike-${_products[index]}.png',
                  fit: BoxFit.scaleDown,
                )),
          ),
        ),
      ),
    );
  }
}
