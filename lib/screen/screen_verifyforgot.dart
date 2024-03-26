import 'package:ecourse/screen/screen_newpass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

class VerifyForgot extends StatefulWidget {
  const VerifyForgot({super.key});

  @override
  State<VerifyForgot> createState() => _VerifyForgotState();
}

class _VerifyForgotState extends State<VerifyForgot> {
  TextEditingController newTextEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();
  @override
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
        padding: const EdgeInsets.all(34),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Code has been Send to ( +1 ) ***-***-*529',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            PinCodeFields(
              length: 4,
              fieldBorderStyle: FieldBorderStyle.square,
              responsive: false,
              fieldHeight: 50.0,
              fieldWidth: 55.0,
              borderWidth: 1.0,
              activeBorderColor: Colors.blue,
              activeBackgroundColor: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(12),
              keyboardType: TextInputType.number,
              autoHideKeyboard: false,
              fieldBackgroundColor: Color(0xffFFFFFF),
              borderColor: Colors.black38,
              textStyle: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
              onComplete: (output) {
                // Your logic with pin code
                print(output);
              },
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Resend Code in ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black, // Or any other desired color
                      ),
                    ),
                    TextSpan(
                      text: '59',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(
                      text: 's',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black, // Or any other desired color
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewPass(),
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
                      'Verify',
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
                      color: Colors.black, // Warna ikon hitam
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
}
