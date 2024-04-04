// ignore_for_file: unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecourse/screen/ikhsano/page_41_mycoursevideo.dart';
import 'package:ecourse/screen/ikhsano/page_43_inbox.dart';

class Course {
  final String title;
  final String lenght;
  final String description;

  Course({
    required this.title,
    required this.lenght,
    required this.description,
  });
}

class CoursesPageContent extends StatelessWidget {
  final List<Course> courses = [
    Course(
      title: 'Bahasa Inggris',
      lenght: 'Ms Yun',
      description: 'Bahasa Inggris Fundamental.',
    ),
    Course(
      title: 'Bahasa Jepang',
      lenght: 'Mr Kawasaki',
      description: 'Kanji.',
    ),
    Course(
      title: 'Bahasa Arab',
      lenght: 'Mr Abdul',
      description: 'Arab.',
    ),
    // Add more courses as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            elevation: 2.0,
            child: ListTile(
              title: Text(courses[index].title),
              subtitle: Text(' ${courses[index].lenght}'),
              trailing: IconButton(
                icon: Icon(Icons.play_circle_fill),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const MyCourseVideo())));
                  // showDialog(
                  //   context: context,
                  //   builder: (BuildContext context) {
                  //     return Center(
                  //       child: AlertDialog(
                  //         backgroundColor: Colors.white,
                  //         content: Column(
                  //           mainAxisSize: MainAxisSize.min,
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             Image.asset("lib/assets/course.png"),
                  //             Text(
                  //               'Course Completed',
                  //               style: TextStyle(
                  //                 fontWeight: FontWeight.bold, // Making the text bold
                  //                 fontSize: 18.0, // Setting the font size
                  //               ),
                  //             ),
                  //             Text('Complete your course. Please write a review.'),
                  //             SizedBox(height: 16.0),
                  //             Row(
                  //               children: [
                  //                 Icon(Icons.star, color: Colors.amber), // 5-star icon
                  //                 Icon(Icons.star, color: Colors.amber),
                  //                 Icon(Icons.star, color: Colors.amber),
                  //                 Icon(Icons.star, color: Colors.amber),
                  //                 Icon(Icons.star, color: Colors.amber),
                  //               ],
                  //             ),
                  //             SizedBox(height: 16.0),
                  //             ElevatedButton(
                  //               onPressed: () {
                  //                 // Add functionality to navigate to the review page
                  //               },
                  //               child: Text(
                  //                   'Write a Review',
                  //                 style: TextStyle(
                  //                   color: Colors.black
                  //                 ),
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // );
                },
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const MyCourseLessons())));
              },
            ),
          );
        },
      ),
    );
  }
}

class MyCourseLessons extends StatelessWidget {
  const MyCourseLessons({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF5F9FF),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'My Courses',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          _buildSearchBar(context),
          Expanded(
            child:
                CoursesPageContent(), // Add the CoursesPageContent widget here
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 5.0, // Add elevation for shadow
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: TextButton(
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => PageMyCourseVideo(),
              // ));
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Center(
                    child: AlertDialog(
                      backgroundColor: Colors.white,
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/course.png"),
                          Text(
                            'Course Completed',
                            style: TextStyle(
                              fontWeight:
                                  FontWeight.bold, // Making the text bold
                              fontSize: 18.0, // Setting the font size
                            ),
                          ),
                          Text('Complete your course. Please write a review.'),
                          SizedBox(height: 16.0),
                          Row(
                            children: [
                              Icon(Icons.star,
                                  color: Colors.amber), // 5-star icon
                              Icon(Icons.star, color: Colors.amber),
                              Icon(Icons.star, color: Colors.amber),
                              Icon(Icons.star, color: Colors.amber),
                              Icon(Icons.star, color: Colors.amber),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: () {
                              // Add functionality to navigate to the review page
                            },
                            child: Text(
                              'Write a Review',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Color(0xFF0961F5),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Continue Courses',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(width: 8.0),
                Container(
                  width: 24.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.arrow_forward_outlined,
                      size: 16.0, color: Color(0xFF0961F5)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
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
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue.shade800,
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: EdgeInsets.all(8.0),
            child: Icon(
              CupertinoIcons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  PageMyCourseVideo() {}
}
