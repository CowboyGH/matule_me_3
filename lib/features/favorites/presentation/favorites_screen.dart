import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/common/widgets/product_tile.dart';
import 'package:matule_me_3/theme/theme.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
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
          'Избранное',
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
                    'assets/icons/heart-red-big.svg',
                    fit: BoxFit.scaleDown,
                  )),
            ),
          )
        ],
      ),
      body: SizedBox(
        child: GridView.builder(
          padding: EdgeInsets.all(20),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.15),
          itemCount: 8,
          itemBuilder: (context, index) => ProductTile(
            isFavorite: true,
          ),
        ),
      ),
    );
  }
}
