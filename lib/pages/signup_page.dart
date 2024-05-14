import 'package:flutter/material.dart';
import 'package:flutter_login_signup/pages/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(212, 236, 235, 205),
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Sign up for the Chunky app                                        ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Enter your name',
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Last name',
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email/phone number',
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Confirm password',
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Checkbox(
                        value: rememberMe,
                        onChanged: (value) {
                          setState(() {
                            rememberMe = value!;
                          });
                        },
                      ),
                      const Expanded(
                        child: Text(
                          'By clicking on \'sign up\', you’re agreeing to the Chunky app\nTerms of Service and Privacy Policy',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 45, 73, 144),
                      foregroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      minimumSize: const Size(200, 60),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child:
                        const Text('Sign Up', style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
