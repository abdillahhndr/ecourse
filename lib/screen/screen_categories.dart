import 'package:ecourse/screen/screen_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F9FF),
      appBar: AppBar(
        title: Text(
          "All Category",
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
            SizedBox(height: 16.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  buildCategoryItem(
                      '3D Design', Image.asset("assets/images/3d.png")),
                  buildCategoryItem(
                      'Graphic Design', Image.asset("assets/images/gd.png")),
                  buildCategoryItem(
                      'Web Development', Image.asset("assets/images/wd.png")),
                  buildCategoryItem(
                      'SEO & Marketing', Image.asset("assets/images/seo.png")),
                  buildCategoryItem('Finance & Accounting',
                      Image.asset("assets/images/fa.png")),
                  buildCategoryItem('Personal Development',
                      Image.asset("assets/images/pd.png")),
                  buildCategoryItem('Office Productivity',
                      Image.asset("assets/images/op.png")),
                  buildCategoryItem(
                      'HR Management', Image.asset("assets/images/hr.png")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryItem(String title, Image img) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Container(height: 60, child: img),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(title),
            ),
          ],
        ),
      ),
    );

    //   Container(
    //     padding: EdgeInsets.all(16.0),
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(8.0),
    //     ),
    //     child: Column(
    //       children: [
    //         Container(height: 60, child: img),
    //         Padding(
    //           padding: const EdgeInsets.only(top: 10),
    //           child: Text(title),
    //         ),
    //       ],
    //     ),
    //   );
    // }
  }
}
