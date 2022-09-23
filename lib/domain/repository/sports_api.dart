import 'package:livescore_app/domain/models/league.dart';
import 'package:livescore_app/domain/models/sport.dart';

abstract class SportsApi {
  Future<List<Sport>> getSports();
  Future<List<League>> getLeagues();
  Future<List<League>> getLeaguesByCountryName(String name);
}
