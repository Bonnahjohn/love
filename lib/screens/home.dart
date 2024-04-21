// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:love/lessons/formal.dart';
import 'package:love/lessons/informal.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              'Home',
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
            // actions: [
            //   IconButton(
            //       onPressed: () {
            //         showDialog(
            //           context: context,
            //           builder: (context) => AlertDialog(
            //             alignment: Alignment.center,
            //             content: Text(
            //               'Text Setting',
            //               style: TextStyle(fontWeight: FontWeight.bold),
            //             ),
            //             actions: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Icon(Icons.text_decrease),
            //                   Icon(Icons.text_increase),
            //                 ],
            //               ),
            //               TextSetting(),
            //               TextButton(
            //                   onPressed: () {
            //                     Navigator.pop(context);
            //                   },
            //                   child: Text(
            //                     'Close',
            //                     style: TextStyle(
            //                         color: Colors.green,
            //                         fontWeight: FontWeight.bold),
            //                   ))
            //             ],
            //           ),
            //         );
            //       },
            //       icon: Icon(
            //         Icons.text_increase,
            //         color: Colors.white,
            //       ))
            // ],

            ///mmmmmmmmmmmmm the bottom tab
            bottom: TabBar(
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                indicatorWeight: 2,
                tabs: [
                  Tab(
                      child: Text(
                    'Informal Letter',
                    style: TextStyle(color: Colors.white),
                  )),
                  Tab(
                    child: Text(
                      'Formal Letter',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ]),
          ),
          body: TabBarView(children: [
            Informals(),
            Formals(),
          ]),
        ));
  }
}
