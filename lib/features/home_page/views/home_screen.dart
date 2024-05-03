import 'package:flutter/material.dart';
import 'package:netflix_chienbm/features/home_page/model/top_rate/top_rated.dart';
import 'package:netflix_chienbm/values/src_values.dart';
import 'package:netflix_chienbm/widgets/custom_carousel.dart';

import '../../../services/src_api.dart';
import '../../src_feature.dart';
import '../model/src_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<UpComingModel> upcomingFuture;
  late Future<UpComingModel> nowPlaying;
  late Future<TopRateModel> topRate;

  ApiServices api = ApiServices();

  @override
  void initState() {
    super.initState();
    upcomingFuture = api.getUpComing();
    nowPlaying = api.getNowPlaying();
    topRate = api.topRate();
  }

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
            FutureBuilder(
              future: topRate,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return CustomCarouselSlider(data: snapshot.data!);
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
            SizedBox(
              height: AppDimens.sizeImageLarge,
              child: MovieCardWidget(
                future: nowPlaying,
                headLineText: AppStr.now,
              ),
            ),
            const SizedBox(
              height: AppDimens.sizedboxMedium,
            ),
            SizedBox(
              height: AppDimens.sizeImageLarge,
              child: MovieCardWidget(
                future: upcomingFuture,
                headLineText: AppStr.upcoming,
              ),
            )
          ],
        ),
      ),
    );
  }
}
