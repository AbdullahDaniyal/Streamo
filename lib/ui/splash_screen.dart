import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_flutter_app/firebase_services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();
  @override
  void initState() {
    super.initState();
    splashServices.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Streamo App Logo.png', // Replace with the actual image path
                height: 80, // Adjust the height to fit your needs
              ),
              const Text(
                'Streamo',
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
          Column(
            verticalDirection: VerticalDirection.down,

            mainAxisAlignment:
                MainAxisAlignment.end, // Align at the bottom center
            children: [
              const Text("\n\n\n\n\n\n\n\n\n\n\n\n"),
              Lottie.asset(
                'assets/animations/cpi.json',
                height: 150,
                width: 150,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
