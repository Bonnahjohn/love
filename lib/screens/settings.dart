// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:love/about/feedback.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late bool trigger = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(fontSize: 27, color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   '  App theme settings\n',
            //   style: TextStyle(color: Colors.grey),
            // ),
            // Card(
            //   child: ListTile(
            //     title: Text('Theme Setting'),
            //     leading: Switch(
            //       value: trigger,
            //       onChanged: (value) {},
            //     ),
            //     trailing: Icon(Icons.light_mode),
            //   ),
            // ),
            //mmmmmmmmmmmmmmmmmm about us
            Text(
              ' \n About Us\n',
              style: TextStyle(color: Colors.grey),
            ),

            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => About(),
                      ));
                },
                title: Text('About Us'),
                leading: Icon(Icons.info_outline),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            // mmmmmmmmmmmmmmmmm

            Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Feedbacks(),
                      ));
                },
                title: Text('Feedback'),
                leading: Icon(Icons.feedback_outlined),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
            //mmmmmmmmmmmmmmmmmmmmmmm
            Card(
              child: ListTile(
                title: Text('Privacy Policy'),
                leading: Icon(Icons.privacy_tip_outlined),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  launch(
                      'https://sites.google.com/view/frenchify-privacy-policy/home');
                },
              ),
            ),

            //mmmmmmmmmmmmmmmmmmmmmmmmmmmm support us
            Text(
              '    \nSupport Us\n',
              style: TextStyle(color: Colors.grey),
            ),
            Card(
              child: ListTile(
                title: Text('More Apps'),
                leading: Icon(Icons.apps_outlined),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  launch(
                      'https://play.google.com/store/apps/dev?id=5455269391718893130');
                },
              ),
            ),
            //mmmmmmmmmmmmmmmmmmmmmm
            // Card(
            //   child: ListTile(
            //     title: Text('Share link'),
            //     leading: Icon(Icons.share_outlined),
            //     trailing: Icon(Icons.arrow_forward_ios),
            //   ),
            // ),
          ],
        )),
      )),
    );
  }
}
