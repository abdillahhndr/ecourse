import 'package:ecourse/screen/ikhsano/page_43_Inbox.dart';
import 'package:ecourse/screen/ikhsano/page_45_Call.dart';
import 'package:flutter/material.dart';

class PageCallsVoice extends StatelessWidget {
  const PageCallsVoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // Anda dapat menambahkan judul atau elemen lain ke dalam appbar di sini
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Scoot R. Shoemake',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              '04.50 Minutes',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w100),
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  child: CircleAvatar(
                    backgroundColor: Colors.white70,
                    child: IconButton(
                      onPressed: () {
                        // Tindakan ketika tombol pertama ditekan
                      },
                      icon: Icon(Icons.mic_off),
                      // color: Colors.red, // warna ikon
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PageInboxCalls()), // Replace ChatPage() with your actual chat page widget
                        );
                      },
                      icon: Icon(Icons.call),
                      color: Colors.white70, // warna ikon
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: IconButton(
                      onPressed: () {
                        // Tindakan ketika tombol ketiga ditekan
                      },
                      icon: Icon(Icons.videocam_off_outlined),
                      color: Colors.white70, // warna ikon
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
