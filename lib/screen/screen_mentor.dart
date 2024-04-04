import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageMentor extends StatefulWidget {
  const PageMentor({super.key});

  @override
  State<PageMentor> createState() => _PageMentorState();
}

class _PageMentorState extends State<PageMentor> {
  List datacard2 = [
    {
      "mentor": "William K. Olivas",
      "category": "3D Design",
    },
    {
      "mentor": "Donald S. Channel",
      "category": "Arts & Humanities",
    },
    {
      "mentor": "Elvira E. Limones",
      "category": "Personal Development",
    },
    {
      "mentor": "Scott S. Simpson",
      "category": "SEO & Marketing",
    },
    {
      "mentor": "Patricia G. Peters",
      "category": "Office Productivity",
    },
    {
      "mentor": "Carmen P. Mercado",
      "category": "Web Development",
    },
    {
      "mentor": "William K. Olivas",
      "category": "3D Design",
    },
    {
      "mentor": "William K. Olivas",
      "category": "3D Design",
    },
    {
      "mentor": "William K. Olivas",
      "category": "3D Design",
    },
    {
      "mentor": "William K. Olivas",
      "category": "3D Design",
    },
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
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
          "Top Mentors",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffF5F9FF),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: ListView.builder(
        itemCount: datacard2.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            color: Color(0xffF5F9FF),
            child: ListTile(
              leading: ClipRRect(
                child: Image.asset(
                  "assets/images/prof.png",
                  width: 66,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              title: Text(
                datacard2[index]["mentor"],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                datacard2[index]["category"],
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black45,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        backgroundColor: Color(0xffE2E6EA),
        currentIndex: _selectedIndex,
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
