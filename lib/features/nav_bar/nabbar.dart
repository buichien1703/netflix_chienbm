import 'package:flutter/material.dart';
import 'package:netflix_chienbm/features/new_page/views/new_screen.dart';

import '../../../values/src_values.dart';
import '../src_feature.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: AppColors.black,
          height: AppDimens.height70,
          child: TabBar(
            tabs: [
              Tab(
                icon: AppIcons.iconHome,
                text: AppStr.home,
              ),
              Tab(
                icon: AppIcons.iconSearch,
                text: AppStr.search,
              ),
              Tab(
                icon: AppIcons.iconNewAndHot,
                text: AppStr.newAndHot,
              ),
            ],
            indicatorColor: AppColors.transparent,
            labelColor: AppColors.white,
            unselectedLabelColor: AppColors.greyShadow,
          ),
        ),
        body: const TabBarView(
          children: [
            HomeScreen(),
            SearchScreen(),
            NewAndHotScreen(),
          ],
        ),
      ),
    );
  }
}
