import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/theme/theme.dart';

class CategoriesList extends StatefulWidget {
  final String? activeCategory;
  const CategoriesList(this.activeCategory, {super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  final List<String> _categories = ['Все', 'Outdoor', 'Tennis', 'Running'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Категории',
          style: AppShrifts.medium16R.copyWith(color: AppColors.text),
        ),
        SizedBox(height: 16),
        SizedBox(
          height: 40,
          child: ListView.separated(
            itemCount: _categories.length,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                context.push('/category/${_categories[index]}');
              },
              child: Container(
                height: 40,
                width: 108,
                decoration: BoxDecoration(
                    color: _categories[index] == widget.activeCategory
                        ? AppColors.blue
                        : AppColors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    _categories[index],
                    style: AppShrifts.regular12P.copyWith(
                        color: _categories[index] == widget.activeCategory
                            ? AppColors.white
                            : AppColors.text),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
