import 'package:ecourse/screen/screen_verifyforgot.dart';
import 'package:flutter/material.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  ElevatedButton createEmailButton(String email) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.email),
          Text('Via Email'),
        ],
      ),
    );
  }

  ElevatedButton createSmsButton(String phoneNumber) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.sms),
          Text('Via SMS'),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F9FF),
      appBar: AppBar(
        title: Text(
          "Forgot Password",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffF5F9FF),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(34, 150, 34, 34),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Select which contact details should we use to Reset Your Password',
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
            _buildContactInfo(
              context,
              "assets/images/emailfor.png",
              "Via Email",
              "priscilla.frank26@gmail.com",
            ),
            SizedBox(height: 20.0),
            // SMS
            _buildContactInfo(
              context,
              "assets/images/emailfor.png",
              "Via SMS",
              "+1 (480) 894-5529",
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerifyForgot(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                    padding: EdgeInsets.all(10),
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
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo(
      BuildContext context, String iconPath, String label, String info) {
    return GestureDetector(
      onTap: () {
        // Lakukan aksi saat tombol ditekan
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              iconPath,
              height: 30.0,
            ),
            SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  info,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
