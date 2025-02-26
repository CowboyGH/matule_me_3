import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:matule_me_3/theme/theme.dart';

class SearchHistory extends StatefulWidget {
  const SearchHistory({super.key});

  @override
  State<SearchHistory> createState() => _SearchHistoryState();
}

class _SearchHistoryState extends State<SearchHistory> {
  List<String> history = [
    'New Shoes',
    'Nike Top Shoes',
    'Nike Air Force',
    'Shoes',
    'Snakers Nike Shoes',
    'Regular Shoes'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 212,
        child: ListView.separated(
            itemBuilder: (context, index) => GestureDetector(
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/clock.svg',
                        fit: BoxFit.scaleDown,
                      ),
                      const SizedBox(width: 12),
                      Text(
                        history[index],
                        style: AppShrifts.medium14P
                            .copyWith(color: AppColors.dark),
                      )
                    ],
                  ),
                ),
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemCount: history.length));
  }
}
