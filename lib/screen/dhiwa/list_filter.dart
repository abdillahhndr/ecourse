import 'package:flutter/material.dart';

class ListFilter extends StatefulWidget {
  const ListFilter({Key? key}) : super(key: key);

  @override
  State<ListFilter> createState() => _ListFilterState();
}

class _ListFilterState extends State<ListFilter> {
  // List of selected categories, levels, price filters, features, ratings, and durations
  List<bool> _isSelectedCategory = List.generate(6, (index) => false);
  List<bool> _isSelectedLevel = List.generate(4, (index) => false);
  List<bool> _isSelectedPrice = [false, false]; // Paid, Free
  List<bool> _isSelectedFeature = List.generate(4,
      (index) => false); // All Captain, Quizzes, Coding Exercise, Practice Test
  List<bool> _isSelectedRating = List.generate(
      4,
      (index) =>
          false); // 4.5 & Up Above, 4.0 & Up Above, 3.5 & Up Above, 3.0 & Up Above
  List<bool> _isSelectedDuration = List.generate(
      4, (index) => false); // 0-2 Hours, 3-6 Hours, 7-16 Hours, 17+ Hours

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF5F9FF),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // IconButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   icon: Icon(Icons.arrow_back),
            // ),
            Text(
              'Filter',
              style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),

            Spacer(),
            TextButton(
              onPressed: () {
                // Add your functionality for Clear button
              },
              child: Text(
                'Clear',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'SubCategories:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  List<String> subcategories = [
                    '3D Design',
                    'Web Development',
                    '3D Animation',
                    'Graphic Design',
                    'SEO & Marketing',
                    'Arts & Humanities'
                  ];
                  return CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        subcategories[index],
                        style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    value: _isSelectedCategory[index],
                    onChanged: (bool? value) {
                      setState(() {
                        _isSelectedCategory[index] = value!;
                      });
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Level:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  List<String> levels = [
                    'All Level',
                    'Beginners',
                    'Intermediate',
                    'Expert'
                  ];
                  return CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Text(
                        levels[index],
                        style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    value: _isSelectedLevel[index],
                    onChanged: (bool? value) {
                      setState(() {
                        _isSelectedLevel[index] = value!;
                      });
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Price:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) {
                  List<String> levels = ['Paid', 'Free'];
                  return CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Text(
                        levels[index],
                        style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    value: _isSelectedPrice[index],
                    onChanged: (bool? value) {
                      setState(() {
                        _isSelectedPrice[index] = value!;
                      });
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Features:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Jost',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  List<String> levels = [
                    'All Captian',
                    'Quizzes',
                    'Coding Exercise',
                    'Practice Tests'
                  ];
                  return CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Text(
                        levels[index],
                        style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    value: _isSelectedFeature[index],
                    onChanged: (bool? value) {
                      setState(() {
                        _isSelectedFeature[index] = value!;
                      });
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Rating:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  List<String> levels = [
                    '4.5 & Up Above',
                    '4.0 & Up Above',
                    '3.5 & Up Above',
                    '3.0 & Up Above'
                  ];
                  return CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Text(
                        levels[index],
                        style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    value: _isSelectedRating[index],
                    onChanged: (bool? value) {
                      setState(() {
                        _isSelectedRating[index] = value!;
                      });
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Video Duration:',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  List<String> levels = [
                    '0-2 Hours',
                    '3-6 Hours',
                    '7-16 Hours',
                    '17+ Hours'
                  ];
                  return CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Text(
                        levels[index],
                        style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    value: _isSelectedDuration[index],
                    onChanged: (bool? value) {
                      setState(() {
                        _isSelectedDuration[index] = value!;
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Row(
            children: [
              Text(
                'Apply',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(255, 255, 254, 254),
                ),
                child: Icon(Icons.arrow_forward_ios, size: 25),
              ),
            ],
          ),
          label: SizedBox.shrink(),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(1, 40),
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 1),
            textStyle: TextStyle(color: Colors.black),
            backgroundColor: Color.fromARGB(255, 0, 88, 252),
          ),
        ),
      ),
    );
  }
}
