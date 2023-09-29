import 'package:flutter/material.dart';
import 'package:mynotes/components/header_bar.dart';
import 'package:mynotes/components/text_field.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HeaderBar(title: "Edit Profile"),
      body: Column(children: [
        AppTextField(
          hint: "First Name",
        ),
        AppTextField(
          hint: "Last Name",
        ),
        AppTextField(
          hint: "Phone Number",
        ),
        AppTextField(
          hint: "Location",
        ),
      ]),
    );
  }
}
