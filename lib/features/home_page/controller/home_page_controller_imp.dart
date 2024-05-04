import 'package:netflix_chienbm/services/src_api.dart';

import '../../src_feature.dart';

class HomePageControllerImp extends HomePageController {
  @override
  void onInit() async {
    api = ApiServices(this);
    getUpComing();
    getNowPlaying();
    super.onInit();
  }

  @override
  Future<void> getUpComing() async {
    upcoming = api.getUpComing();
  }

  @override
  Future<void> getNowPlaying() async {
    nowPlaying = api.getNowPlaying();
  }
}
