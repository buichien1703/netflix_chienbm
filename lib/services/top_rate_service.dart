import 'dart:convert';
import 'dart:developer';

import 'package:netflix_chienbm/features/home_page/controller/top_rate_controller_imp.dart';

import '../common/src_common.dart';
import 'package:http/http.dart' as http;

import '../features/home_page/model/top_rate/top_rated.dart';

const baseUrl = "https://api.themoviedb.org/3/";
var key = "?api_key=$apiKey";
late String endPoint;

class TopRateService {
  TopRateService(TopRateControllerImp topRateControllerImp);


  Future<TopRateModel> topRate() async {
    endPoint = "tv/top_rated";
    final url = "$baseUrl$endPoint$key";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      log("Success top rated series");
      return TopRateModel.fromJson(jsonDecode(response.body));
    }
    throw Exception("Failed to upload top rated series");
  }
  
}
