import 'package:flutter/material.dart';
import 'package:livescore_app/core/theme.dart';
import 'package:livescore_app/domain/models/sport.dart';
import 'package:livescore_app/domain/repository/sports_api.dart';
import 'package:livescore_app/ui/providers/sports_provider.dart';
import 'package:provider/provider.dart';

class SelectSportsScreen extends StatelessWidget {
  const SelectSportsScreen._();

  static Widget init() {
    return ChangeNotifierProvider(
      lazy: false,
      create: ((context) => SportsProvider(
            sportsApi: context.read<SportsApi>(),
          )..loadSports()),
      child: const SelectSportsScreen._(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final sportsList = context.watch<SportsProvider>().sportsList;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What sport do you interest?',
                style: Theme.of(context).primaryTextTheme.headline1,
              ),
              const SizedBox(height: 14),
              Text(
                'You can choose more than one',
                style: Theme.of(context).primaryTextTheme.subtitle1,
              ),
              const SizedBox(height: 14),
              sportsList == null
                  ? const Center(child: CircularProgressIndicator())
                  : Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 3 / 4,
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          Sport sport = sportsList[index];
                          return Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppTheme.greyNavy,
                                ),
                                child: Image.network(sport.strSportIconGreen),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                sport.strSport,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: AppTheme.white,
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => SelectSportsScreen.init()));
                    },
                    style: Theme.of(context).elevatedButtonTheme.style,
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 70),
                      child: Text('Continue'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Skip',
                      style: Theme.of(context).primaryTextTheme.subtitle2,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
