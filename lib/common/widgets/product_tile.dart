import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/theme/theme.dart';

class ProductTile extends StatefulWidget {
  final bool isFavorite;
  const ProductTile({super.key, required this.isFavorite});

  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  late bool _isFavorite;
  bool _isInCart = false;

  @override
  void initState() {
    _isFavorite = widget.isFavorite;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/product/big');
      },
      child: Container(
        height: 182,
        width: 160,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(16)),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 9, top: 9),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isFavorite = !_isFavorite;
                  });
                },
                child: Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                        color: AppColors.lightGrey,
                        borderRadius: BorderRadius.circular(40)),
                    child: _isFavorite
                        ? SvgPicture.asset(
                            'assets/icons/heart-red.svg',
                            fit: BoxFit.scaleDown,
                          )
                        : SvgPicture.asset(
                            'assets/icons/heart.svg',
                            fit: BoxFit.scaleDown,
                          )),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 24),
                child: Image.asset(
                  'assets/images/nike.png',
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9, top: 97.5),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Best Seller'.toUpperCase(),
                        style: AppShrifts.medium12P
                            .copyWith(color: AppColors.blue, height: 0),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Nike Air Max',
                        style: AppShrifts.semibold16R
                            .copyWith(color: AppColors.hint, height: 0),
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '₽752.00',
                            style: AppShrifts.medium14P
                                .copyWith(color: AppColors.text, height: 0),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _isInCart = !_isInCart;
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
                              child: _isInCart
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
