import 'package:flutter/material.dart';
import 'package:love/screens/home.dart';
import 'package:love/screens/settings.dart';
import 'package:love/screens/translator.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //mmmmmmmm body will be  appended here
      body: [
        const HomePage(),
        const TranslatorPage(),
        const SettingsPage()
      ][selected],
      bottomNavigationBar: NavigationBar(
          selectedIndex: selected,
          indicatorShape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
          //mmmmmmmmmmmmmmmmmmmmmmm
          onDestinationSelected: (value) {
            setState(() {
              selected = value;
            });
          },
          backgroundColor: Colors.grey.shade300,
          indicatorColor: Colors.black,
          destinations: const [
            NavigationDestination(
                selectedIcon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
                icon: Icon(Icons.home),
                label: 'Home'),
            //mmmmmmmmmmmmmmmmmmmmmmmmmm 2
            NavigationDestination(
                selectedIcon: Icon(
                  Icons.g_translate_outlined,
                  color: Colors.white,
                ),
                icon: Icon(
                  Icons.translate,
                ),
                label: 'Translator'),
            //mmmmmmmmmmmmmmmmmmmmmmmmmmmm   3
            NavigationDestination(
                selectedIcon: Icon(
                  Icons.settings_outlined,
                  color: Colors.white,
                ),
                icon: Icon(Icons.settings),
                label: 'Settings'),
          ]),
    );
  }
}
