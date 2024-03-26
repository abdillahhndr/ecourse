import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List datacard2 = [
    {
      "title": "Graphic Design Advanced",
      "category": "Graphic Design",
      "price": "28",
      "rate": "4.2",
      "jumlah": "7830 std",
    },
    {
      "title": "Graphic Design Advanced",
      "category": "Graphic Design",
      "price": "28",
      "rate": "4.2",
      "jumlah": "7830 std",
    },
    {
      "title": "Graphic Design Advanced",
      "category": "Graphic Design",
      "price": "28",
      "rate": "4.2",
      "jumlah": "7830 std",
    },
  ];
  final List<String> dataCard = [
    "Graphic Design Advanced",
    "3D Design",
    "Arts & Humanities",
  ];

  final List<String> imageList2 = [
    'assets/images/OFFER.png',
    'assets/images/OFFER.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F9FF),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(34),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Hi Ronald A. Martin",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "What Would you like to learn Today?\n Search Below.",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Spacer(),
                Image.asset(
                  "assets/images/notif.png",
                  width: 40,
                ),
              ],
            ),
            SizedBox(
              height: 44,
            ),
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
                  suffixIcon: Icon(
                    CupertinoIcons.list_bullet,
                    color: Colors.blue,
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            CarouselSlider(
              items: imageList2.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: AssetImage(item),
                          fit: BoxFit.contain,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 150.0,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 18,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "3D Design",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Text(
                  "Arts & Humanities",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Spacer(),
                Text(
                  "Graphic Design",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Popular Courses",
                  style: TextStyle(
                    fontSize: 18,
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
            Expanded(
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
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: datacard2.length,
            //     scrollDirection: Axis.horizontal,
            //     itemBuilder: (context, index) {
            //       return Card(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(50),
            //         ),
            //         color: Colors.grey.shade200,
            //         child: Padding(
            //           padding: const EdgeInsets.all(10),
            //           child: Center(
            //             child: Text(
            //               datacard2[index],
            //               style: TextStyle(
            //                 fontSize: 16,
            //               ),
            //             ),
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
