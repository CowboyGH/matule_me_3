import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:matule_me_3/common/widgets/product_tile.dart';
import 'package:matule_me_3/features/search/presentation/widgets/search_history.dart';
import 'package:matule_me_3/theme/theme.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool _isTapped = false;

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
            'Поиск',
            style: AppShrifts.medium16R.copyWith(color: AppColors.text),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 20, top: 26, right: 20),
          child: Column(
            children: [
              SizedBox(
                  height: 52,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    onFieldSubmitted: (value) {
                      context.push('/search');
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.white,
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 15, right: 16),
                          child: SvgPicture.asset(
                            'assets/icons/loop.svg',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 12.5),
                          child: SvgPicture.asset(
                            'assets/icons/voice.svg',
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
              SizedBox(height: 31),
              if (!_isTapped)
                GestureDetector(
                    onTap: () {
                      setState(() {
                        _isTapped = !_isTapped;
                      });
                    },
                    child: SearchHistory()),
              if (_isTapped)
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
