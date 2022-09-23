import 'dart:convert';

List<League> leaguesFromJson(String str) =>
    List<League>.from(json.decode(str).map((x) => League.fromJson(x)));

class League {
  League({
    required this.idLeague,
    required this.strLeague,
    required this.strSport,
    required this.strLeagueAlternate,
  });

  final String idLeague;
  final String strLeague;
  final String strSport;
  final String strLeagueAlternate;

  League copyWith({
    String? idLeague,
    String? strLeague,
    String? strSport,
    String? strLeagueAlternate,
  }) =>
      League(
        idLeague: idLeague ?? this.idLeague,
        strLeague: strLeague ?? this.strLeague,
        strSport: strSport ?? this.strSport,
        strLeagueAlternate: strLeagueAlternate ?? this.strLeagueAlternate,
      );

  factory League.fromJson(Map<String, dynamic> json) => League(
        idLeague: json["idLeague"],
        strLeague: json["strLeague"],
        strSport: json["strSport"],
        strLeagueAlternate: json["strLeagueAlternate"],
      );
}
