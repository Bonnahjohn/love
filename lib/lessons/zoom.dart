import 'package:flutter/material.dart';
import 'package:zoom_widget/zoom_widget.dart';

class Zooma extends StatelessWidget {
  const Zooma({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          'Informal letter samples',
          style: TextStyle(fontSize: 27, color: Colors.white),
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
                  const Text(
                    '1.',
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                  GestureDetector(
                    child: Image.asset(
                      'assets/images/I2.png',
                      fit: BoxFit.cover,
                    ),
                    onDoubleTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Open())));
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    '2.',
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                  GestureDetector(
                    child: Image.asset(
                      'assets/images/I3.png',
                      fit: BoxFit.cover,
                    ),
                    onDoubleTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Opena())));
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    '3.',
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                  GestureDetector(
                    child: Image.asset(
                      'assets/images/I4.png',
                      fit: BoxFit.cover,
                    ),
                    onDoubleTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const View())));
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    '4.',
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                  GestureDetector(
                    child: Image.asset(
                      'assets/images/I1.png',
                      fit: BoxFit.cover,
                    ),
                    onDoubleTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const Show())));
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

class Show extends StatelessWidget {
  const Show({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          'Zoomable Image',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Zoom(
          initTotalZoomOut: true,
          child: Image.asset(
            'assets/images/I1.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

//mmmmmmmmmmmmmmm second zoomable mmmmmmmmmmmm
class View extends StatelessWidget {
  const View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          'Zoomable Image',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Zoom(
          initTotalZoomOut: true,
          child: Image.asset(
            'assets/images/I4.png',
            fit: BoxFit.cover,
          ),
        ),
      )),
    );
  }
}

//mmmmmmmmmmmmmmm third zoomable mmmmmmmmmmmm
class Open extends StatelessWidget {
  const Open({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          'Zoomable Image',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Zoom(
          initTotalZoomOut: true,
          child: Image.asset(
            'assets/images/I2.png',
            fit: BoxFit.cover,
          ),
        ),
      )),
    );
  }
}

//mmmmmmmmmmmmmmm last zoomable mmmmmmmmmmmm
class Opena extends StatelessWidget {
  const Opena({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: const Text(
          'Zoomable Image',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Zoom(
          initTotalZoomOut: true,
          child: Image.asset(
            'assets/images/I3.png',
            fit: BoxFit.cover,
          ),
        ),
      )),
    );
  }
}
