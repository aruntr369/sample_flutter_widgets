import 'package:flutter/material.dart';
import 'package:sample_widgets/Screen_main.dart';
import 'package:sample_widgets/screen_account.dart';
import 'package:sample_widgets/screen_search.dart';


class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  int _currentSelectedIndex = 0;

  final _page = [
    ScreenMain(),
    ScreenSearch(),
    ScreenAccounts(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.lightGreen,
        currentIndex: _currentSelectedIndex,
        onTap: (newIndex) {
          print(newIndex);
          setState(() {
            _currentSelectedIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
