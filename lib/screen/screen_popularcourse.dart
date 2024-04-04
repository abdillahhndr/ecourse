import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularCourse extends StatefulWidget {
  const PopularCourse({super.key});

  @override
  State<PopularCourse> createState() => _PopularCourseState();
}

class _PopularCourseState extends State<PopularCourse> {
  final List<String> dataCard = [
    "All",
    "Graphic Design",
    "3D Design",
    "Arts & Humanities",
  ];
  List datacard2 = [
    {
      "title": "Graphic Design Advanced",
      "category": "Graphic Design",
      "price": "28",
      "oldprice": "48",
      "rate": "4.2",
      "jumlah": "7830 std",
    },
    {
      "title": "Graphic Design Advanced",
      "category": "Programming   ",
      "price": "28",
      "oldprice": "48",
      "rate": "4.2",
      "jumlah": "7830 std",
    },
    {
      "title": "Advertisement Design       ",
      "category": "Graphic Design",
      "price": "28",
      "oldprice": "48",
      "rate": "4.2",
      "jumlah": "7830 std",
    },
    {
      "title": "Graphic Design Advanced",
      "category": "Graphic Design",
      "price": "28",
      "oldprice": "48",
      "rate": "4.2",
      "jumlah": "7830 std",
    },
    {
      "title": "Graphic Design Advanced",
      "category": "Graphic Design",
      "price": "28",
      "oldprice": "48",
      "rate": "4.2",
      "jumlah": "7830 std",
    },
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PopularCourse()),
        );
      } else if (index == 1) {
      } else if (index == 2) {
      } else if (index == 3) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F9FF),
      appBar: AppBar(
        title: Text(
          "Popular Courses",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffF5F9FF),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(34, 10, 34, 15),
        child: Column(
          children: [
            Container(
              height: 45,
              child: ListView.builder(
                itemCount: dataCard.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    color: Color(0xffE8F1FF),
                    child: Container(
                      height: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Center(
                          child: Text(
                            dataCard[index],
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 555,
              child: ListView.builder(
                itemCount: datacard2.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    elevation: 2,
                    color: Color(0xffFFFFFF),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/card2.png"),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween, // Untuk meletakkan teks kategori di sebelah kiri dan ikon di sebelah kanan
                                    children: [
                                      Text(
                                        datacard2[index]["category"],
                                        style: TextStyle(
                                          color: Color(0xffFF6B00),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 73,
                                      ),
                                      Image.asset(
                                        "assets/images/bookmark.png",
                                        height: 16,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .start, // Untuk meletakkan teks kategori di sebelah kiri dan ikon di sebelah kanan
                                    children: [
                                      Text(
                                        datacard2[index]["title"],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .start, // Untuk meletakkan teks kategori di sebelah kiri dan ikon di sebelah kanan
                                    children: [
                                      Text(
                                        '\$${datacard2[index]["price"]}',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '\$${datacard2[index]["price"]}',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 110,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween, // Untuk meletakkan teks kategori di sebelah kiri dan ikon di sebelah kanan
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffFCCB40),
                                        size: 13,
                                      ),
                                      Text(
                                        datacard2[index]["rate"],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 11,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "|",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        datacard2[index]["jumlah"],
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 11,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 68,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black45,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,
        backgroundColor: Color(0xffE2E6EA),
        onTap: _onItemTapped,
        showUnselectedLabels: true, // Set to true to show labels always
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_list,
            ),
            label: 'MY COURSES',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: 'INBOX',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_outlined),
            label: 'TRANSACTION',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'PROFILE',
          ),
        ],
      ),
    );
  }
}
