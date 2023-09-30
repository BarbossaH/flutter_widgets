import 'package:flutter/material.dart';
import 'package:mynotes/components/header_bar.dart';
import 'package:mynotes/components/text_field.dart';
import 'package:mynotes/components/user_avatar.dart';
import 'package:mynotes/config/app_strings.dart';
import 'package:mynotes/styles/app_colors.dart';
import 'package:mynotes/styles/app_text.dart';

enum Gender { none, male, female, colorful, other }

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderBar(title: AppStrings.editProfile),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 16,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: UserAvatar(
                  size: 120,
                  radius: 24,
                ),
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Icon(Icons.edit)))
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          const AppTextField(
            hint: AppStrings.firstName,
          ),
          const SizedBox(
            height: 16,
          ),
          const AppTextField(
            hint: AppStrings.lastName,
          ),
          const SizedBox(
            height: 16,
          ),
          const AppTextField(
            hint: AppStrings.phoneNumber,
          ),
          const SizedBox(
            height: 16,
          ),
          const AppTextField(
            hint: AppStrings.location,
          ),
          const SizedBox(
            height: 16,
          ),
          const AppTextField(
            hint: AppStrings.birthday,
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: const EdgeInsets.only(left: 9, right: 0, top: 6),
            decoration: BoxDecoration(
                color: AppColors.fliedColor,
                borderRadius: const BorderRadius.all(Radius.circular(12))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.gender,
                  style: AppText.body1.copyWith(fontSize: 12),
                ),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                          title: const Text(AppStrings.male,
                              style: TextStyle(fontSize: 14)),
                          value: Gender.male,
                          visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity),
                          groupValue: gender,
                          contentPadding: EdgeInsets.zero,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.male;
                            });
                          }),
                    ),
                    Expanded(
                      child: RadioListTile(
                          title: const Text(AppStrings.female,
                              style: TextStyle(fontSize: 14)),
                          value: Gender.female,
                          groupValue: gender,
                          visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity),
                          contentPadding: EdgeInsets.zero,
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.female;
                            });
                          }),
                    ),
                    // Expanded(
                    //   child: RadioListTile(
                    //       title: const Text(
                    //         AppStrings.colorful,
                    //         style: TextStyle(fontSize: 14),
                    //       ),
                    //       value: Gender.colorful,
                    //       groupValue: gender,
                    //       contentPadding: EdgeInsets.zero,
                    //       visualDensity: const VisualDensity(
                    //           horizontal: VisualDensity.minimumDensity,
                    //           vertical: VisualDensity.minimumDensity),
                    //       onChanged: (value) {
                    //         setState(() {
                    //           gender = Gender.colorful;
                    //         });
                    //       }),
                    // ),
                    Expanded(
                      child: RadioListTile(
                          title: const Text(AppStrings.other,
                              style: TextStyle(fontSize: 14)),
                          value: Gender.other,
                          contentPadding: EdgeInsets.zero,
                          groupValue: gender,
                          visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity),
                          onChanged: (value) {
                            setState(() {
                              gender = Gender.other;
                            });
                          }),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
