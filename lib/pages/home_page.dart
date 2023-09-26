import 'package:flutter/material.dart';
import 'package:mynotes/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        // elevation: 0,
        title: const Text("W D"),
        centerTitle: false,
        actions: const [Icon(Icons.mail_outline), Icon(Icons.chat_rounded)],
      ),
      body: ListView(children: mockUsersFromServer()),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: mockUsersFromServer(),
      //   ),
      // )
      // body: const Center(
      //     child: Text(
      //   'this is home page',
      //   style: TextStyle(color: Colors.white),
      // )),
    );
  }

  Widget _userItem() {
    return Row(
      children: [
        Image.asset(
          'assets/temp/user1.png',
          width: 60,
          height: 60,
        ),
        const SizedBox(
          width: 9,
        ),
        const Text(
          "A beauty",
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 1200; i++) {
      users.add(_userItem());
    }
    return users;
  }
}
