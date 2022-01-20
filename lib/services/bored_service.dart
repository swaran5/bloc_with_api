import 'package:http/http.dart';
import '../model/bored_api.dart';

class BoredService {
  Future<BoredApi> getBoredApi() async {
    final response = await get(Uri.parse("https://www.boredapi.com/api/activity"));
    final activity = boredApiFromJson(response.body);
    return activity;
  }
}