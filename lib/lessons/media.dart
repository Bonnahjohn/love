// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:zoom_widget/zoom_widget.dart';

//

class Sider extends StatelessWidget {
  const Sider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          'Formal letter samples',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'To view or zoom the picture, double tap on the image.',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    '1.',
                    style: TextStyle(color: Colors.amber, fontSize: 30),
                  ),
                  GestureDetector(
                    child: Image.asset(
                      'assets/images/F2.png',
                      fit: BoxFit.cover,
                    ),
                    onDoubleTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Dashs())));
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    '2.',
                    style: TextStyle(color: Colors.amber, fontSize: 30),
                  ),
                  GestureDetector(
                    child: Image.asset(
                      'assets/images/F1.png',
                      fit: BoxFit.cover,
                    ),
                    onDoubleTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Dash())));
                    },
                  ),
                  const SizedBox(
                    height: 70,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//mmmmmmmmmmmmmmmmmmmmmm
//
//first mmmmmmmmmmmmmmmmmmm
class Dash extends StatelessWidget {
  const Dash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          'Zoomable Image',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Zoom(
          initTotalZoomOut: true,
          child: Image.asset(
            'assets/images/F1.png',
            fit: BoxFit.cover,
          ),
        ),
      )),
    );
  }
}

class Dashs extends StatelessWidget {
  const Dashs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          'Zoomable Image',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Zoom(
          initTotalZoomOut: true,
          child: Image.asset(
            'assets/images/F2.png',
            fit: BoxFit.cover,
          ),
        ),
      )),
    );
  }
}
