import 'package:bottom_menu_navigation/core/presentation/bottom_bar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Search',
          style: TextStyle(
            color: Colors.black,
            fontSize: 60,
          ),
        ),
      ),
    );
  }
}
