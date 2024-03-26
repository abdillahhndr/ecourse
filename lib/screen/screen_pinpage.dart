import 'package:ecourse/screen/screen_finger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

class CreatePinCode extends StatefulWidget {
  const CreatePinCode({super.key});

  @override
  State<CreatePinCode> createState() => _CreatePinCodeState();
}

class _CreatePinCodeState extends State<CreatePinCode> {
  TextEditingController newTextEditingController = TextEditingController();
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F9FF),
      appBar: AppBar(
        title: Text(
          "Create New Pin",
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
                'Add a Pin Number to Make Your Account more Secure',
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
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FingerPage(),
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
