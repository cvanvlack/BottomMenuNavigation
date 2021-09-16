import 'package:bottom_menu_navigation/core/presentation/bottom_bar.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomBar(),
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Messages',
          style: TextStyle(
            color: Colors.black,
            fontSize: 60,
          ),
        ),
      ),
    );
  }
}
