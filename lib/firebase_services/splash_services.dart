import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_flutter_app/ui/welcome_page.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const WelcomePage())));
  }
}
