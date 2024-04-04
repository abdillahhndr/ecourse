import 'package:flutter/material.dart';
import 'package:ecourse/screen/dhiwa/courses_list.dart';
import 'list_filter.dart';

class MentorList extends StatelessWidget {
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
          'Mentors',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Jost',
              color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(8.0),
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
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '3D Design',
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListFilter()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20), // Spacer between search bar and buttons
                Row(
                  children: [
                    Container(
                      width: 175,
                      height: 48,
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color:
                            Color(0xFFE8F1FF), // Set the background color here
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CoursesList()), // Ganti MentorPage dengan nama halaman Mentor Anda
                          );
                        },
                        child: Text(
                          'Courses',
                          style: TextStyle(
                            color: Color.fromARGB(
                                255, 0, 0, 0), // Set text color to white
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20), // Spacer between buttons
                    Container(
                      width: 175,
                      height: 48,
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color:
                            Color(0xFF167F71), // Set the background color here
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Add your functionality for Mentors button
                        },
                        child: Text(
                          'Mentors',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10), // Spacer between buttons and heading
                Row(
                  children: [
                    Text(
                      'Result for “3D Design”',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(width: 150), // Spacer between the texts
                    Text(
                      '18 Founds >',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20), // Spacer before image and title
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: 400,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 253, 253),
                      borderRadius:
                          BorderRadius.circular(8.0), // Adjust as needed
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
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(
                                    255, 0, 0, 0), // Changed color to black
                                shape: BoxShape
                                    .circle, // Made the container a circle
                              ),
                            ),
                            SizedBox(width: 20), // Spacer
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Branden S. Baker',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '3D Design',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 5), // Spacer
                                Row(),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20), // Spacer before image and title
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: 400,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 253, 253),
                      borderRadius:
                          BorderRadius.circular(8.0), // Adjust as needed
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
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(
                                    255, 0, 0, 0), // Changed color to black
                                shape: BoxShape
                                    .circle, // Made the container a circle
                              ),
                            ),
                            SizedBox(width: 20), // Spacer
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Gregory M. Padgett',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '3D Design',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 5), // Spacer
                                Row(),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20), // Spacer before image and title
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: 400,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 253, 253),
                      borderRadius:
                          BorderRadius.circular(8.0), // Adjust as needed
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
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(
                                    255, 0, 0, 0), // Changed color to black
                                shape: BoxShape
                                    .circle, // Made the container a circle
                              ),
                            ),
                            SizedBox(width: 20), // Spacer
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Marie F. Munoz',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '3D Design',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 5), // Spacer
                                Row(),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20), // Spacer before image and title
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: 400,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 253, 253),
                      borderRadius:
                          BorderRadius.circular(8.0), // Adjust as needed
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
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(
                                    255, 0, 0, 0), // Changed color to black
                                shape: BoxShape
                                    .circle, // Made the container a circle
                              ),
                            ),
                            SizedBox(width: 20), // Spacer
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sandra C. Florence',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '3D Design',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 5), // Spacer
                                Row(),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20), // Spacer before image and title
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: 400,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 253, 253, 253),
                      borderRadius: BorderRadius.circular(8.0),
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
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color:
                                    Color.fromARGB(255, 0, 0, 0), // Warna hitam
                                shape:
                                    BoxShape.circle, // Dibuat menjadi lingkaran
                              ),
                            ),
                            SizedBox(width: 20), // Spacer
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sandra C. Florence',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '3D Design',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 5), // Spacer
                                Row(),
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
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Add your functionality for home tab
              },
              tooltip: 'Home',
            ),
            IconButton(
              icon: Icon(Icons.menu_book),
              onPressed: () {
                // Add your functionality for My Courses tab
              },
              tooltip: 'My Courses',
            ),
            IconButton(
              icon: Icon(Icons.inbox),
              onPressed: () {
                // Add your functionality for Inbox tab
              },
              tooltip: 'Inbox',
            ),
            IconButton(
              icon: Icon(Icons.attach_money),
              onPressed: () {
                // Add your functionality for transaction tab
              },
              tooltip: 'Transactions',
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                // Add your functionality for profile tab
              },
              tooltip: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
