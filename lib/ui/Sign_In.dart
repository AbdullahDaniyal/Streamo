import 'package:flutter/material.dart';
import 'package:my_flutter_app/ui/auth/login_screen.dart';
import 'package:my_flutter_app/ui/auth/signup_screen.dart';

import '../widgets/continue_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 250, 250, 250),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/interaction.png', // Replace with the actual image path
              height: 170, // Adjust the height to fit your needs
            ),
            const SizedBox(height: 20),
            const Text(
              "Let's you in",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ContinueButton(
              text: "Continue with Facebook",
              onPressed: () {},
              image: const AssetImage("assets/images/facebook.png"),
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 20),
            ContinueButton(
              text: "Continue with Google",
              onPressed: () {},
              image: const AssetImage("assets/images/google.png"),
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 20),
            ContinueButton(
              text: "Continue with Apple",
              onPressed: () {},
              image: const AssetImage("assets/images/apple-logo.png"),
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 20),
            const Text(
              'Or',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ContinueButton(
              text: "Sign in with Password",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              backgroundColor: const Color.fromARGB(255, 122, 27, 139),
              isWhite: true,
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text("Don't have an account? ",
                    style: TextStyle(fontSize: 16)),
                InkWell(
                  highlightColor: const Color.fromARGB(0, 255, 255, 255),
                  onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()))
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 16),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
