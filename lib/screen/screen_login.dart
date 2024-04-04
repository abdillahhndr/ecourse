import 'package:ecourse/screen/screen_fillprofile.dart';
import 'package:ecourse/screen/screen_pinpage.dart';
import 'package:ecourse/screen/screen_regis.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({super.key});

  @override
  State<PageLogin> createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  bool _rememberMe = false;
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F9FF),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(34),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 45,
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(50)),
                alignment: Alignment.topLeft,
                child: Center(),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Image.asset(
                      'assets/images/LOGO.png',
                      height: 70,
                    ),
                    SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Let’s Sign In.!",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Login to Your Account to Continue your Courses",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        hintText: 'Email',
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          size: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        hintText: 'Password',
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          size: 24,
                        ),
                        suffixIcon: IconButton(
                          icon: _isObscure
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: _rememberMe,
                          onChanged: (value) {
                            setState(() {
                              _rememberMe = value!;
                            });
                          },
                        ),
                        Text(
                          'Remember Me',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 20.0),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                              onTap: () {
                                // Handle forgot password functionality
                              },
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FillProfil(),
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 4),
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
                              'Sign In',
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
                              color: Colors.blue, // Warna ikon hitam
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Or Continue With',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            padding: const EdgeInsets.all(13),
                            child: Image.asset(
                              "assets/images/google.png",
                              height: 54,
                              width: 54,
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            padding: const EdgeInsets.all(13),
                            child: Image.asset(
                              "assets/images/apple.png",
                              height: 54,
                              width: 54,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Don't have an account?  ",
                          style: TextStyle(color: Colors.grey),
                          children: [
                            TextSpan(
                                text: "Sign Up",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => PageRegis()));
                                  },
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ))
                          ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
