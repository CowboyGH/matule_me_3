import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:matule_me_3/theme/theme.dart';

class ProductTile extends StatefulWidget {
  const ProductTile({super.key});

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  bool isFavorite = false;
  bool isInCart = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 184,
      width: 160,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.only(left: 9, top: 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  child: Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(40)),
                      child: SvgPicture.asset(
                        'assets/icons/heart.svg',
                        fit: BoxFit.scaleDown,
                        color: isFavorite ? AppColors.red : null,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.5),
                  child: Align(
                    child: Image.asset(
                      'assets/images/nike.png',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                )
              ],
            ),
            // SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Best Seller'.toUpperCase(),
                  style: AppShrifts.medium12P.copyWith(color: AppColors.blue),
                ),
                SizedBox(height: 8),
                Text(
                  'Nike Air Max',
                  style: AppShrifts.semibold16R.copyWith(color: AppColors.hint),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '₽752.00',
                      style:
                          AppShrifts.medium14P.copyWith(color: AppColors.text),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isInCart = !isInCart;
                        });
                      },
                      child: Container(
                        width: 34,
                        height: 35.5,
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16))),
                        child: isInCart
                            ? SvgPicture.asset(
                                'assets/icons/cart.svg',
                                fit: BoxFit.scaleDown,
                              )
                            : SvgPicture.asset(
                                'assets/icons/plus.svg',
                                fit: BoxFit.scaleDown,
                              ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
