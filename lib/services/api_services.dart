import 'dart:convert';
import 'dart:developer';
import 'package:netflix_chienbm/features/search_page/model/popular_model.dart';
import 'package:netflix_chienbm/features/src_feature.dart';

import '../common/src_common.dart';
import 'package:http/http.dart' as http;

import '../features/detail_movie_page/src_detail_page.dart';
import '../features/home_page/model/src_model.dart';
import '../features/home_page/model/top_rate/top_rated.dart';

const baseUrl = "https://api.themoviedb.org/3/";
var key = "?api_key=$apiKey";
late String endPoint;

class ApiServices {
  Future<UpComingModel> getUpComing() async {
    endPoint = "movie/upcoming";
    final url = "$baseUrl$endPoint$key";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      log("Success");
      return UpComingModel.fromJson(jsonDecode(response.body));
    }
    throw Exception("Failed to upload Upcoming");
  }

  Future<UpComingModel> getNowPlaying() async {
    endPoint = "movie/now_playing";
    final url = "$baseUrl$endPoint$key";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      log("Success now playing");
      return UpComingModel.fromJson(jsonDecode(response.body));
    }
    throw Exception("Failed to upload now playing");
  }

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

  Future<PopularMovie> getPopular() async {
    endPoint = "movie/popular";
    final url = "$baseUrl$endPoint$key";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      log("Success get popular series");
      return PopularMovie.fromJson(jsonDecode(response.body));
    }
    throw Exception("Failed to upload popular");
  }

  Future<SearchMovie> searchMovie(String searchText) async {
    endPoint = "search/movie?query=$searchText";
    final url = "$baseUrl$endPoint";

    final response = await http.get(Uri.parse(url), headers: {
      'Authorization':
          "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyNjI0Y2JlMzk1MWFlNWM2OTAzNjUxYjlhOWMxOTA5OSIsInN1YiI6IjYzMzFjZDkyMDA2YjAxMDA3YjkwNTIzYyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.BYSWAh9i78ctg5YLWjZWv1Gg0R0MUlhAQuonBVOLUAw"
    });

    if (response.statusCode == 200) {
      log("Success search");
      return SearchMovie.fromJson(jsonDecode(response.body));
    }
    throw Exception("Failed to search movie");
  }

Future<DetailMovieModel> getDetailMovie(int movieId) async {
    endPoint = "movie/$movieId";
    final url = "$baseUrl$endPoint$key";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      log("Success get detail movie");
      return DetailMovieModel.fromJson(jsonDecode(response.body));
    }
    throw Exception("Failed to upload detail movie");
  }

  Future<MovieRecommendationsModel> getMovieRecommendations(int movieId) async {
    endPoint = "movie/$movieId/recommendations";
    final url = "$baseUrl$endPoint$key";

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      log("Success get recommendations");
      return MovieRecommendationsModel.fromJson(jsonDecode(response.body));
    }
    throw Exception("Failed to upload recommendations");
  }
}
