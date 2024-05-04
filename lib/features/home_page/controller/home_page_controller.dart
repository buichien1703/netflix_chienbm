import 'package:get/get.dart';

import '../../../services/src_api.dart';
import '../model/src_model.dart';

abstract class HomePageController extends GetxController {

  late final Future<UpComingModel> upcoming;

  late final Future<UpComingModel> nowPlaying;

  late final ApiServices api;

   void getUpComing();

   void getNowPlaying();
}
