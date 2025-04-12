import 'package:get/get.dart';

class PredictionController extends GetxController {
  // Observable variables for match data
  RxString teams = "".obs;
  RxString tournament = "".obs;
  RxString venue = "".obs;
  RxString winProbability = "".obs;
  RxString favoredTeam = "".obs;

  // Method to update match data
  void updateMatchData(Map<String, String> data) {
    if (data.containsKey("teams")) {
      teams.value = data["teams"]!;
    }
    if (data.containsKey("tournament")) {
      tournament.value = data["tournament"]!;
    }
    if (data.containsKey("venue")) {
      venue.value = data["venue"]!;
    }
    if (data.containsKey("winProbability")) {
      winProbability.value = data["winProbability"]!;
      favoredTeam.value = data["favoredTeam"]!;
    }
  }
}