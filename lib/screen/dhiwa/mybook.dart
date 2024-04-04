import 'package:ecourse/screen/dhiwa/remove_my_bookmark.dart';
import 'package:flutter/material.dart';

class Mybook extends StatelessWidget {
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
          'My Bookmark',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Jost',
              color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 48,
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color: Color(0xFFE8F1FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'All',
                          style: TextStyle(
                            color: Color.fromARGB(255, 3, 3, 3),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 120,
                      height: 48,
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color: Color(0xFF167F71),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Graphic Design',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 100,
                      height: 48,
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color: Color(0xFFE8F1FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          '3D Design',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 150,
                      height: 48,
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color: Color(0xFFE8F1FF),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Arts & Humanities',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RemoveMyBookmarkDialog()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Center(
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
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Graphic Design ', // Ubah judul
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          color: Colors.orange,
                                        ),
                                      ),
                                      Text(
                                        'Graphic Design Advanced ', // Ubah judul
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '\$28',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: Colors.yellow, size: 14),
                                          SizedBox(width: 5),
                                          Text(
                                            '4.0 | 7830 Std',
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
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Center(
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
                                SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Graphic Design ', // Ubah judul
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    Text(
                                      'Advertisement Design ', // Ubah judul
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '\$42',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 14),
                                        SizedBox(width: 5),
                                        Text(
                                          '3.9 | 12880 Std',
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
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Tambahkan dua item lagi di sini dengan judul yang sama
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Center(
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
                                SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Programing', // Ubah judul
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    Text(
                                      'Graphic Design Advanced ', // Ubah judul
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '\$37',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 14),
                                        SizedBox(width: 5),
                                        Text(
                                          '4.2 | 990 Std',
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
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Center(
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
                                SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Web Davelopment', // Ubah judul
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                        color: Colors.orange,
                                      ),
                                    ),
                                    Text(
                                      'Web Developer conce..', // Ubah judul
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '\$56',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.yellow, size: 14),
                                        SizedBox(width: 5),
                                        Text(
                                          '4.9 | 14580 Std',
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
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Tambahkan dua item lagi di sini dengan judul yang sama
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
