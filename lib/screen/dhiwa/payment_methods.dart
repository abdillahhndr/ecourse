import 'package:flutter/material.dart';

class PaymentMethods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF5F9FF),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: const Color.fromARGB(255, 14, 13, 13),
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Payment Methods',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Jost',
              color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 1), // Spacer before image and title
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: 400,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 253, 253),
                      borderRadius:
                          BorderRadius.circular(20.0), // Adding border radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 115,
                              height: 115,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 8, 8, 8),
                                borderRadius: BorderRadius.circular(
                                    20.0), // Adding border radius
                              ),
                            ),
                            SizedBox(width: 20), // Spacer
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Graphic Design',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.orange,
                                  ),
                                ),
                                Text(
                                  'Setup your Graphic Design',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.end, // Menggeser teks ke kanan
              children: [
                SizedBox(height: 5),
                Text(
                  'Select the Payment Methods you Want to Use',
                  textAlign: TextAlign.end, // Align teks ke kanan
                  style: TextStyle(
                    color: Color.fromARGB(255, 151, 151, 151),
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 10), // Spacer before the box
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 253, 253),
                      borderRadius:
                          BorderRadius.circular(20.0), // Adding border radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Paypal',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                        Radio(
                          value: true, // Set value for radio button
                          groupValue: null, // Set group value for radio button
                          onChanged: (value) {
                            // Add your radio button functionality here
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10), // Spacer before the box
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 253, 253),
                      borderRadius:
                          BorderRadius.circular(20.0), // Adding border radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Google Pay',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                        Radio(
                          value: true, // Set value for radio button
                          groupValue: null, // Set group value for radio button
                          onChanged: (value) {
                            // Add your radio button functionality here
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10), // Spacer before the box
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 253, 253),
                      borderRadius:
                          BorderRadius.circular(20.0), // Adding border radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Apple Pay',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                        Radio(
                          value: true, // Set value for radio button
                          groupValue: null, // Set group value for radio button
                          onChanged: (value) {
                            // Add your radio button functionality here
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10), // Spacer before the box
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 253, 253),
                      borderRadius:
                          BorderRadius.circular(20.0), // Adding border radius
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '**** ****  **76  3054',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                        Radio(
                          value: true, // Set value for radio button
                          groupValue: null, // Set group value for radio button
                          onChanged: (value) {
                            // Add your radio button functionality here
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10), // Spacer before the button
                Center(
                    // child: RaisedButton(
                    //   onPressed: () {
                    //     // Add functionality for the button
                    //   },
                    //   child: Text(
                    //     'Add',
                    //     style: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 16,
                    //       color: Colors.white,
                    //     ),
                    //   ),
                    //   color: Colors.blue, // Set button color
                    //   shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(20.0),
                    //   ),
                    // ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
