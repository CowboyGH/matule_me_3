import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/common/widgets/categories_list.dart';
import 'package:matule_me_3/common/widgets/product_tile.dart';
import 'package:matule_me_3/theme/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        backgroundColor: AppColors.lightGrey,
        surfaceTintColor: AppColors.lightGrey,
        leading: Align(
          alignment: Alignment(0.5, 0),
          child: GestureDetector(
            onTap: () {
              context.go('/favorites');
            },
            child: SvgPicture.asset(
              'assets/icons/sliders.svg',
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        title: Text(
          'Главная',
          style: AppShrifts.semibold32R.copyWith(color: AppColors.text),
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
        padding: EdgeInsets.only(top: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    onFieldSubmitted: (value) {
                      context.push('/search');
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.white,
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 30, right: 16),
                          child: SvgPicture.asset(
                            'assets/icons/loop.svg',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        hintText: 'Поиск',
                        hintStyle: AppShrifts.medium12P
                            .copyWith(color: AppColors.hint),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14))),
                  )),
                  SizedBox(width: 14),
                  GestureDetector(
                    onTap: () {
                      context.push('/cart');
                    },
                    child: Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                            color: AppColors.blue,
                            borderRadius: BorderRadius.circular(40)),
                        child: SvgPicture.asset(
                          'assets/icons/filters.svg',
                          fit: BoxFit.scaleDown,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22),
            Padding(
                padding: EdgeInsets.only(left: 20), child: CategoriesList('')),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Популярное',
                    style: AppShrifts.medium16R.copyWith(color: AppColors.text),
                  ),
                  Text(
                    'Все',
                    style: AppShrifts.medium12P.copyWith(color: AppColors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: SizedBox(
                height: 184,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => ProductTile(
                          isFavorite: false,
                        ),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 19,
                        ),
                    itemCount: 2),
              ),
            ),
            SizedBox(height: 29),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Акции',
                    style: AppShrifts.medium16R.copyWith(color: AppColors.text),
                  ),
                  Text(
                    'Все',
                    style: AppShrifts.medium12P.copyWith(color: AppColors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset('assets/images/banner.png'),
            )
          ],
        ),
      ),
    );
  }
}
