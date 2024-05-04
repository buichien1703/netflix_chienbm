import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_chienbm/values/src_values.dart';
import 'package:netflix_chienbm/widgets/custom_carousel.dart';

import '../../src_feature.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  HomePageController get controller => Get.put(HomePageControllerImp());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          AppAssets.logo,
          height: AppDimens.heightImageLogoHome,
          width: AppDimens.widthImageLogoHome,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {},
              child: AppIcons.iconSearch,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppDimens.radius8),
            child: Container(
              color: AppColors.blue,
              height: AppDimens.heightAvatar,
              width: AppDimens.widthAvatar,
            ),
          ),
          const SizedBox(
            width: AppDimens.sizedboxMedium,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomCarouselSlider(),
            SizedBox(
              height: AppDimens.sizeImageLarge,
              child: MovieCardWidget(
                future: controller.nowPlaying,
                headLineText: AppStr.now,
              ),
            ),
            const SizedBox(
              height: AppDimens.sizedboxMedium,
            ),
            SizedBox(
              height: AppDimens.sizeImageLarge,
              child: MovieCardWidget(
                future: controller.upcoming,
                headLineText: AppStr.upcoming,
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
