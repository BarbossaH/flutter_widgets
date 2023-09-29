import 'package:flutter/material.dart';
import 'package:mynotes/components/header_bar.dart';
import 'package:mynotes/components/text_field.dart';
import 'package:mynotes/config/app_strings.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HeaderBar(title: AppStrings.editProfile),
      body: Column(children: [
        AppTextField(
          hint: AppStrings.firstName,
        ),
        AppTextField(
          hint: AppStrings.lastName,
        ),
        AppTextField(
          hint: AppStrings.phoneNumber,
        ),
        AppTextField(
          hint: AppStrings.location,
        ),
      ]),
    );
  }
}
