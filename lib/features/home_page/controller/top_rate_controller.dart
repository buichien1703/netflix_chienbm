import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:netflix_chienbm/services/top_rate_service.dart';

import '../model/top_rate/top_rated.dart';

abstract class TopRateController extends GetxController {
   Rx<TopRateModel?>topRate = Rxn();

  late final TopRateService api;

  RxList<Result> topRateResponse = RxList();


  RxBool isShowLoading = false.obs;

  void showLoading() {
    isShowLoading.value = true;
  }

  void hideLoading() {
    isShowLoading.value = false;
  }

  Future<void> getTopRate();
}
