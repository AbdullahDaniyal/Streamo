import 'package:flutter/material.dart';
import 'package:my_flutter_app/ui/sign_In.dart';

// Import your LoginScreen

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/streaming_image(1).jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: GestureDetector(
          onHorizontalDragEnd: (_) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignIn()),
            );
          },
          child: const Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(), // Push content to the bottom
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.0), // Adjust as needed
                    child: Text(
                      'Welcome to',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Streamo!",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Image(
                        image: AssetImage('assets/images/waving_img.png'),
                        height: 60,
                      ),
                      SizedBox(
                        height: 16,
                      )
                    ],
                  ),
                  SizedBox(height: 0),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 40.0), // Adjust the values as needed
                    child: Text(
                      'Streamo is a streaming app that allows you to watch your favorite movies and TV shows.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(bottom: 32.0), // Adjust as needed
                    child: Text(
                      'SWIPE UP TO CONTINUE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
