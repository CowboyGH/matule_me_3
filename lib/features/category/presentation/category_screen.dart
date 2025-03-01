import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/common/widgets/categories_list.dart';
import 'package:matule_me_3/common/widgets/product_tile.dart';
import 'package:matule_me_3/theme/theme.dart';

class CategoryScreen extends StatefulWidget {
  final String category;
  const CategoryScreen({super.key, required this.category});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
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
            widget.category,
            style: AppShrifts.medium16R.copyWith(color: AppColors.text),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 20, top: 16, right: 20),
          child: Column(
            children: [
              CategoriesList(widget.category),
              SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
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
            ],
          ),
        ));
  }
}
