import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/theme/theme.dart';

class ProductCard extends StatefulWidget {
  final String title;
  final String price;

  const ProductCard({super.key, required this.title, required this.price});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          context.push('/product/blue');
        },
        child: Container(
          height: 104,
          padding: EdgeInsets.only(left: 9, top: 9, right: 15, bottom: 10),
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(8)),
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
              const SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppShrifts.medium16R.copyWith(color: AppColors.text),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    widget.price,
                    style: AppShrifts.medium14P.copyWith(color: AppColors.text),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
