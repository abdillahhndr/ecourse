import 'package:ecourse/screen/screen_login.dart';
import 'package:ecourse/screen/screen_regis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LetsuIn extends StatefulWidget {
  const LetsuIn({super.key});

  @override
  State<LetsuIn> createState() => _LetsuInState();
}

class _LetsuInState extends State<LetsuIn> {
  final Color kDarkBlueColor = const Color(0xFF0961F5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F9FF),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(34),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 140,
              ),
              const Text(
                'Let’s you in',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 50.0,
                width: 250.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/google.png', height: 100),
                    const SizedBox(width: 10.0),
                    Text(
                      'Continue with Google',
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                height: 50.0,
                width: 250.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/apple.png', height: 100),
                    const SizedBox(width: 10.0),
                    Text(
                      'Continue with Apple',
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 59),
              const Text(
                '(Or)',
                style: TextStyle(fontSize: 16.0, color: Colors.black),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageLogin(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  primary: Color(0xff0961F5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Sign In with Your Account',
                        textAlign: TextAlign.center, // Tetap tengah
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Color(0xffF2F2F2),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white, // Warna latar belakang putih
                        shape: BoxShape.circle, // Bentuk bulat
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Color(0xff0961F5), // Warna ikon hitam
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don’t have an Account?',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                  const SizedBox(height: 5.0),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PageRegis(),
                          ));
                    },
                    child: Text('SIGN UP'),
                    style: TextButton.styleFrom(
                      primary: kDarkBlueColor,
                      textStyle: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
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
