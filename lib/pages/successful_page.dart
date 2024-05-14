import 'package:flutter/material.dart';
import 'package:flutter_login_signup/pages/start_page.dart';

class SuccessfulPage extends StatelessWidget {
  const SuccessfulPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/checklist.png'), // Replace with your image path
            const SizedBox(height: 20),
            const Text(
              'Your Sign up was successful',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StartPage(),
                  ),
                );
              },
              child: const Text(
                'Continue to Home',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
