import 'package:flutter/material.dart';

class CoursesCompleted extends StatelessWidget {
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
          'My Courses',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Jost',
              color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10),
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
                            hintText: 'Search for ...',
                            filled: true,
                            fillColor: Color.fromARGB(255, 255, 255, 255),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.search_sharp),
                        onPressed: () {},
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
                      margin: EdgeInsets.only(left: 5),
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
                          'Completed',
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
                      margin: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        color:
                            Color(0xFFE8F1FF), // Set the background color here
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Ongoing',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
                            icon: Icon(Icons.check_circle_outline_rounded),
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
                            icon: Icon(Icons.check_circle_outline_rounded),
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
                            icon: Icon(Icons.check_circle_outline_rounded),
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
