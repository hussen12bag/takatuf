import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:takatuf/theme/colors.dart';
import 'package:takatuf/theme/fonts.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  List<String> title = [
    'تعديل الحساب',
    'اعلاناتي',
    'المفضلة',
    'اللغة',
    'عن التطبيق',
    'سياسة الخصوصية',
    'الشروط والأحكام',
    'تواصل معنا',
    'تسجيل الخروج'
  ];
  List<Icon> icon = [
    Icon(
      Icons.edit,
      size: 20,
      color: AppColors.DarkBlue,
    ),
    Icon(
      CupertinoIcons.arrowtriangle_down_square,
      size: 20,
      color: AppColors.DarkBlue,
    ),
    Icon(
      CupertinoIcons.heart,
      size: 20,
      color: AppColors.DarkBlue,
    ),
    Icon(
      Icons.language_outlined,
      size: 20,
      color: AppColors.DarkBlue,
    ),
    Icon(
      Icons.donut_small_sharp,
      size: 20,
      color: AppColors.DarkBlue,
    ),
    Icon(
      Icons.webhook_outlined,
      size: 20,
      color: AppColors.DarkBlue,
    ),
    Icon(
      Icons.note,
      size: 20,
      color: AppColors.DarkBlue,
    ),
    Icon(
      CupertinoIcons.phone_fill_arrow_down_left,
      size: 20,
      color: AppColors.DarkBlue,
    ),
    Icon(
      Icons.logout,
      size: 20,
      color: AppColors.Red,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView.builder(
            itemCount: 9,
            itemBuilder: (context, index) {
              return Container(
                height: 40,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        icon[index],
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '${title[index]}',
                          style: index == 8
                              ? AppFonts.Red_16
                              : AppFonts.DarkBLue_16,
                        ),
                      ],
                    ),
                    if (index != 8) ...[
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 17,
                        ),
                      ),
                    ]
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
