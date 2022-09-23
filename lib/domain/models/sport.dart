import 'dart:convert';

List<Sport> sportsFromJson(String str) =>
    List<Sport>.from(json.decode(str).map((x) => Sport.fromJson(x)));

class Sport {
  Sport({
    required this.idSport,
    required this.strSport,
    required this.strFormat,
    required this.strSportThumb,
    required this.strSportIconGreen,
    required this.strSportDescription,
  });

  final String idSport;
  final String strSport;
  final StrFormat strFormat;
  final String strSportThumb;
  final String strSportIconGreen;
  final String strSportDescription;

  Sport copyWith({
    String? idSport,
    String? strSport,
    StrFormat? strFormat,
    String? strSportThumb,
    String? strSportIconGreen,
    String? strSportDescription,
  }) =>
      Sport(
        idSport: idSport ?? this.idSport,
        strSport: strSport ?? this.strSport,
        strFormat: strFormat ?? this.strFormat,
        strSportThumb: strSportThumb ?? this.strSportThumb,
        strSportIconGreen: strSportIconGreen ?? this.strSportIconGreen,
        strSportDescription: strSportDescription ?? this.strSportDescription,
      );

  factory Sport.fromJson(Map<String, dynamic> json) => Sport(
        idSport: json["idSport"],
        strSport: json["strSport"],
        strFormat: strFormatValues.map[json["strFormat"]]!,
        strSportThumb: json["strSportThumb"],
        strSportIconGreen: json["strSportIconGreen"],
        strSportDescription: json["strSportDescription"],
      );
}

enum StrFormat { teamvsTeam, eventSport }

final strFormatValues = EnumValues(
    {"EventSport": StrFormat.eventSport, "TeamvsTeam": StrFormat.teamvsTeam});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);
}
