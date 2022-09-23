import 'package:flutter/material.dart';
import 'package:livescore_app/core/custom_icons.dart';
import 'package:livescore_app/core/theme.dart';
import 'package:livescore_app/domain/models/sport.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.sportsList});

  final List<Sport> sportsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LiveScore'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(CustomIcons.search)),
          IconButton(
              onPressed: () {}, icon: const Icon(CustomIcons.notification))
        ],
      ),
      body: Column(
        children: [
          Align(child: Image.asset('assets/images/banner.png')),
          const SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: sportsList.length,
                itemBuilder: ((context, index) {
                  Sport sport = sportsList[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: AppTheme.greyNavy,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(sport.strSportIconGreen),
                          const SizedBox(height: 10),
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
                      ),
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}
