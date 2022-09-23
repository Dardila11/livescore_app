import 'package:flutter/material.dart';
import 'package:livescore_app/core/theme.dart';
import 'package:livescore_app/ui/select_screen/select_sports_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 4,
              child: AuthImageContainer(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'Discover all about sport',
                style: Theme.of(context).primaryTextTheme.headline1,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'Search millions of jobs and get the inside scoop on companies. Wait for what? Let’s get start it!',
                style: Theme.of(context).primaryTextTheme.subtitle1,
                softWrap: true,
                maxLines: 3,
              ),
            ),
            const SizedBox(height: 45),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      child: Text('Sign in'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: Theme.of(context).primaryTextTheme.subtitle2,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AuthImageContainer extends StatelessWidget {
  const AuthImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          child: Container(
            width: 280,
            height: 280,
            decoration: BoxDecoration(
              color: AppTheme.greyNavy,
              borderRadius: BorderRadius.circular(60),
            ),
          ),
        ),
        Positioned(
          left: 20,
          top: 50,
          child: Image.asset(
            'assets/images/auth_image.png',
            width: 350,
            height: 350,
          ),
        ),
        const Positioned(
          right: 41,
          bottom: 180,
          child: Ball(color: AppTheme.blue, width: 24, height: 24),
        ),
        const Positioned(
          left: 80,
          top: 75,
          child: Ball(color: Colors.white, width: 18, height: 18),
        ),
        const Positioned(
          left: 60,
          bottom: 90,
          child: Ball(color: Colors.white, width: 18, height: 18),
        ),
      ],
    );
  }
}

class Ball extends StatelessWidget {
  const Ball({
    super.key,
    required this.color,
    required this.width,
    required this.height,
  });

  final Color color;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
