import 'package:ecourse/screen/screen_pinpage.dart';
import 'package:ecourse/screen/screen_regis.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FillProfil extends StatefulWidget {
  const FillProfil({super.key});

  @override
  State<FillProfil> createState() => _FillProfilState();
}

class _FillProfilState extends State<FillProfil> {
  TextEditingController txtTglLahir = TextEditingController();

  Future selectDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      setState(() {
        txtTglLahir.text = DateFormat("dd-MM-yyyy").format(pickedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fill Your Profile",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffF5F9FF),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
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
                      height: 0,
                    ),
                    Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset(
                            'assets/images/profil.png',
                            height: 80.0,
                          ),
                        ),
                        Positioned(
                          bottom:
                              5.0, // Adjust these values to fine-tune position
                          right: 1.0,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: FloatingActionButton(
                              backgroundColor: Color(0xff167F71),
                              onPressed: () {
                                // Add your button press action here
                              },
                              child: Icon(
                                Icons.edit,
                                size: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        hintText: 'Full Name',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        hintText: 'Nick Name',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      onTap: () {
                        selectDate();
                      },
                      controller: txtTglLahir,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        hintText: 'Date of Birth',
                        prefixIcon: Icon(
                          Icons.date_range,
                          size: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
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
                          Icons.email,
                          size: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/flag.png"),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              hintText: '( +1 ) 724-848-1225',
                            ),
                          ),
                        ),
                        // Add your checkmark icon widget here
                      ],
                    ),
                    // TextFormField(
                    //   decoration: InputDecoration(
                    //     fillColor: Colors.white,
                    //     filled: true,
                    //     border: OutlineInputBorder(
                    //       borderSide: BorderSide.none,
                    //       borderRadius: BorderRadius.all(Radius.circular(20)),
                    //     ),
                    //     hintText: 'Email',
                    //     prefixIcon: Icon(
                    //       Icons.email,
                    //       size: 24,
                    //     ),
                    //   ),
                    // ),

                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        hintText: 'Gender',
                        suffixIcon: Icon(
                          Icons.arrow_drop_down,
                          size: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreatePinCode(),
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
                    SizedBox(
                      height: 5,
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
