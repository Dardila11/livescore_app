import 'package:flutter/material.dart';
import 'package:livescore_app/domain/models/sport.dart';
import 'package:livescore_app/domain/repository/sports_api.dart';

class SportsProvider extends ChangeNotifier {
  SportsProvider({
    required this.sportsApi,
  });
  final SportsApi sportsApi;

  List<Sport>? sportsList;

  void loadSports() async {
    sportsList = await sportsApi.getSports();
    notifyListeners();
  }
}
