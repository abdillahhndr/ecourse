import 'package:ecourse/screen/screen_forgot.dart';
import 'package:flutter/material.dart';

class FingerPage extends StatefulWidget {
  const FingerPage({super.key});

  @override
  State<FingerPage> createState() => _FingerPageState();
}

class _FingerPageState extends State<FingerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F9FF),
      appBar: AppBar(
        title: Text(
          "Set Your Fingerprint",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffF5F9FF),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(34),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Add a Fingerprint to Make your Account more Secure',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Image.asset("assets/images/fingerprint.png"),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPass(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      primary: Color(0xffE8F1FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Skip',
                            textAlign: TextAlign.center, // Tetap tengah
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          decoration: BoxDecoration(// Bentuk bulat
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => MyPopup(),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                            'Continue',
                            textAlign: TextAlign.center, // Tetap tengah
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Color(0xffF2F2F2),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                          decoration: BoxDecoration(
                            color: Colors.white, // Warna latar belakang putih
                            shape: BoxShape.circle, // Bentuk bulat
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                            size: 21, // Warna ikon hitam
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/images/congrats.png"),
                SizedBox(height: 20.0),
                Text(
                  'Congratulations',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Your Account is Ready to Use.\nYou will be redirected to the Home Page in a Few Seconds.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 25.0),
                Image.asset("assets/images/load.png"),
                SizedBox(height: 25.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
