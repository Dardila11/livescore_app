import 'package:http/http.dart' as http;
import 'package:livescore_app/domain/models/league.dart';
import 'package:livescore_app/domain/models/sport.dart';
import 'package:livescore_app/domain/repository/sports_api.dart';

const sportsApi = "https://www.thesportsdb.com/api/v1/json/2";

class SportsService implements SportsApi {
  @override
  Future<List<League>> getLeagues() async {
    Uri url = Uri.parse('$sportsApi/all_leagues.php');
    final response = await http.get(url);
    return leaguesFromJson(response.body);
  }

  @override
  Future<List<League>> getLeaguesByCountryName(String name) async {
    Uri url = Uri.parse('$sportsApi/search_all_leagues.php?c=$name');
    final response = await http.get(url);
    return leaguesFromJson(response.body);
  }

  @override
  Future<List<Sport>> getSports() async {
    Uri url = Uri.parse('$sportsApi/all_sports.php');
    final response = await http.get(url);
    return sportsFromJson(response.body);
  }
}
