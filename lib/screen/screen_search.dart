import 'package:flutter/material.dart';

class PageSearch extends StatefulWidget {
  const PageSearch({super.key});

  @override
  State<PageSearch> createState() => _PageSearchState();
}

class _PageSearchState extends State<PageSearch> {
  List<String> categories = [
    '3D Design',
    'Graphic Design',
    'Programming',
    'SEO & Marketing',
    'Web Development',
    'Office Productivity'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F9FF),
      appBar: AppBar(
        title: Text(
          "Search",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffF5F9FF),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                hintText: 'Search',
                prefixIcon: Icon(
                  Icons.search,
                  size: 24,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageSearch(),
                        ));
                  },
                  child: Image.asset(
                    "assets/images/filter.png",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Recent Search",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "SEE ALL >",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return buildCategoryItem(categories[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryItem(String title) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: Color(0xffA0A4AB)),
          ),
          IconButton(
            onPressed: () => print('$title closed'),
            icon: Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}
