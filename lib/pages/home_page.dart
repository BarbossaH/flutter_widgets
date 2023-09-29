import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mynotes/components/header_bar.dart';
import 'package:mynotes/components/post_item.dart';
import 'package:mynotes/config/app_strings.dart';

List<String> users = [];

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: HeaderBar(
        title: AppStrings.appName,
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svg/ic_location.svg'))
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItem(user: users[index], des: "something");
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 20,
            width: 20,
          );
        },
        itemCount: users.length,
      ),
      // body: ListView.builder(itemBuilder: (context, index) {
      //   return PostItem(user: users[index], des: "something");
      // }),
      // body: ListView(children: mockUsersFromServer()),
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

  mockUsersFromServer() {
    for (var i = 0; i < 100; i++) {
      users.add("User ID $i");
    }
    return users;
  }
}
