import 'package:ecourse/screen/dhiwa/my_courses_complited.dart';
import 'package:ecourse/screen/dhiwa/mybook.dart';
import 'package:ecourse/screen/dhiwa/payment_methods.dart';
import 'package:ecourse/screen/dhiwa/single_course_detail.dart';
import 'package:ecourse/screen/ikhsano/page_40_mycourse.dart';
import 'package:ecourse/screen/ikhsano/page_43_Inbox.dart';
import 'package:ecourse/screen/ikhsano/page_47_Transactions.dart';
import 'package:ecourse/screen/ikhsano/page_50_profile.dart';
import 'package:flutter/material.dart';
import 'package:ecourse/screen/dhiwa/mentor_list.dart';
import 'list_filter.dart';

class CoursesList extends StatelessWidget {
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
          'Online Courses',
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
                GestureDetector(
                  onTap: () {},
                  child: Container(
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
                              hintText: 'Graphic Design',
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
                            Color(0xFF167F71), // Set the background color here
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextButton(
                        onPressed: () {
                          // Add your functionality for Courses button
                        },
                        child: Text(
                          'Courses',
                          style: TextStyle(
                            color: Colors.white, // Set text color to white
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
                            Color(0xFFE8F1FF), // Set the background color here
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MentorList()), // Ganti MentorPage dengan nama halaman Mentor Anda
                          );
                        },
                        child: Text(
                          'Mentors',
                          style: TextStyle(
                            color: Colors.black,
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
                      'Result for "Graphic Design"',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    SizedBox(width: 100), // Spacer between the texts
                    Text(
                      '2480 Founds >',
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MyApp()), // Ganti MentorPage dengan nama halaman Mentor Anda
                            );
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 115,
                                height: 115,
                                color: Color.fromARGB(255, 8, 8, 8),
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
                                    'Graphic Design Advanced',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 5), // Spacer
                                  Text(
                                    '\$28',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(height: 5), // Spacer
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.yellow, size: 14),
                                      SizedBox(width: 5),
                                      Text(
                                        '4.0 | 7830 Std', // Your rating
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
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
                        Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                            icon: Icon(Icons.save),
                            color: Colors.green,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Mybook()), // Ganti MentorPage dengan nama halaman Mentor Anda
                              );
                            },
                          ),
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PaymentMethods()), // Ganti MentorPage dengan nama halaman Mentor Anda
                            );
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 115,
                                height: 115,
                                color: Color.fromARGB(255, 8, 8, 8),
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
                                    'Advanced Diploma in G',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 5), // Spacer
                                  Text(
                                    '\$28',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(height: 5), // Spacer
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.yellow, size: 14),
                                      SizedBox(width: 5),
                                      Text(
                                        '4.0 | 7830 Std', // Your rating
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
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
                        Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                            icon: Icon(Icons.save),
                            onPressed: () {
                              // Add your save functionality here
                            },
                          ),
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MyCourseLessons()), // Ganti MentorPage dengan nama halaman Mentor Anda
                            );
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 115,
                                height: 115,
                                color: Color.fromARGB(255, 8, 8, 8),
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
                                    'Web Developer conce.',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 5), // Spacer
                                  Text(
                                    '\$28',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(height: 5), // Spacer
                                  Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.yellow, size: 14),
                                      SizedBox(width: 5),
                                      Text(
                                        '4.0 | 7830 Std', // Your rating
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
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
                        Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                            icon: Icon(Icons.save),
                            color: Colors.green,
                            onPressed: () {
                              // Add your save functionality here
                            },
                          ),
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
                              width: 115,
                              height: 115,
                              color: Color.fromARGB(255, 8, 8, 8),
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
                                  'Graphic Design Advanced',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 5), // Spacer
                                Text(
                                  '\$28',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(height: 5), // Spacer
                                Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Colors.yellow, size: 14),
                                    SizedBox(width: 5),
                                    Text(
                                      '4.0 | 7830 Std', // Your rating
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                            icon: Icon(Icons.save),
                            color: Colors.green,
                            onPressed: () {
                              // Add your save functionality here
                            },
                          ),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          CoursesCompleted()), // Ganti MentorPage dengan nama halaman Mentor Anda
                );
              },
              tooltip: 'My Courses',
            ),
            IconButton(
              icon: Icon(Icons.inbox),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PageInboxChat()), // Ganti MentorPage dengan nama halaman Mentor Anda
                );
              },
              tooltip: 'Inbox',
            ),
            IconButton(
              icon: Icon(Icons.attach_money),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PageTransaction()), // Ganti MentorPage dengan nama halaman Mentor Anda
                );
              },
              tooltip: 'Transactions',
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PageProfile()), // Ganti MentorPage dengan nama halaman Mentor Anda
                );
              },
              tooltip: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
