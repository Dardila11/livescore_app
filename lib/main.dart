import 'package:flutter/material.dart';
import 'package:livescore_app/core/theme.dart';
import 'package:livescore_app/data/services/sports_service.dart';
import 'package:livescore_app/domain/repository/sports_api.dart';
import 'package:livescore_app/ui/auth_screen/auth_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme();
    return MultiProvider(
      providers: [
        Provider<SportsApi>(create: (_) => SportsService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: appTheme.theme,
        home: const AuthScreen(),
      ),
    );
  }
}
