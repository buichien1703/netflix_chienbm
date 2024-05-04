import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:netflix_chienbm/common/utils.dart';
import 'package:netflix_chienbm/features/home_page/controller/top_rate_controller.dart';
import 'package:netflix_chienbm/features/home_page/controller/top_rate_controller_imp.dart';
import 'package:netflix_chienbm/features/home_page/model/top_rate/top_rated.dart';
import 'package:netflix_chienbm/values/src_values.dart';
import 'package:get/get.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
  });
  TopRateController get controller => Get.put(TopRateControllerImp());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Obx(
      () => controller.topRate.value == null
          ? const CircularProgressIndicator.adaptive()
          : SizedBox(
                    width: size.width,
                    height:
                        (size.height * 0.33 < 300) ? 300 : size.height * 0.33,
                    child: CarouselSlider.builder(
                      itemCount: controller.topRateResponse.length,
                      itemBuilder: (context, index, realIndex) {
                        var url = controller.topRateResponse[index].backdropPath
                            .toString();

                        return GestureDetector(
                          child: Column(
                            children: [
                              CachedNetworkImage(
                                imageUrl: "$imageUrl$url",
                              ),
                              const SizedBox(
                                  height: AppDimens.paddingVerySmall),
                              Text(controller.topRateResponse[index].name),
                            ],
                          ),
                        );
                      },
                      options: CarouselOptions(
                        height: (size.height * 0.33 < 300)
                            ? 300
                            : size.height * 0.33,
                        aspectRatio: 16 / 9,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 1),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        enlargeCenterPage: true,
                      ),
                    ),
                  ),
    );
  }
}
