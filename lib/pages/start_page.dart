import 'package:flutter/material.dart';
import 'package:flutter_login_signup/pages/login_page.dart';
import 'package:flutter_login_signup/pages/signup_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/banner.png',
              height: 400,
              width: 400,
            ),
            const Text.rich(
              TextSpan(
                text: 'Buy ',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 45, 73, 144),
                ),
                children: [
                  TextSpan(
                      text: 'And ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                            text: 'Sell',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 45, 73, 144),
                            ),
                            children: [
                              TextSpan(
                                text:
                                    ' Anything Faster \n       With The Chunky App',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                      ]),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Massive discounts and offers when you shop',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 45, 73, 144),
                foregroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                minimumSize: const Size(320, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: const Text('Log in', style: TextStyle(fontSize: 20)),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color.fromARGB(255, 45, 73, 144),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  side: BorderSide(
                      color: Color.fromARGB(
                          255, 45, 73, 144)), // Add outline color
                ),
                minimumSize: const Size(320, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupPage(),
                  ),
                );
              },
              child: const Text('Sign up', style: TextStyle(fontSize: 20)),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
