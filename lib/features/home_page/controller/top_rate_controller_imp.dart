import 'package:get/get.dart';
import 'package:netflix_chienbm/features/home_page/controller/top_rate_controller.dart';
import 'package:netflix_chienbm/services/src_api.dart';
import 'package:netflix_chienbm/services/top_rate_service.dart';

import '../../src_feature.dart';

class TopRateControllerImp extends TopRateController {
  @override
  void onInit() async {
    api = TopRateService(this);
    getTopRate();

    super.onInit();
  }

  @override
  Future<void> getTopRate() async {
    showLoading();

    await api.topRate().then((value) {
      topRate.value = value;
      if (value.results.isNotEmpty) {
        topRateResponse.value = value.results;
      }
    });
    hideLoading();
  }
}
