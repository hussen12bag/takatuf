import 'package:flutter/material.dart';
import 'package:takatuf/components/app_bar.dart';
import 'package:takatuf/components/textform.dart';
import 'package:takatuf/components/textform2.dart';
import 'package:takatuf/theme/colors.dart';
import 'package:takatuf/theme/fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      'اسم المستخدم',
      'كلمة المرور',
      'الجوال',
      'المدينة',
      ''
    ];
    List<String> data = [
      'أحمد القاسم',
      '99999999',
      '0888888888 966 +',
      'مكة المكرمة',
      'حذف الحساب'
    ];

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), child: CustomAppBar()),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border:
                              Border.all(color: AppColors.DarkBlue, width: 2),
                        ),
                        child: const CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage:
                              AssetImage('assets/images/profile.jpg'),
                          radius: 70,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColors.DarkBlue,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit,
                              size: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Text(
                                '${title[index]}',
                                style: AppFonts.DarkBLue_16,
                                textAlign: TextAlign.right,
                              ),
                            ),
                            SizedBox(height: 4),
                            Textform(
                              text: '${data[index]}',
                              style: index == 4
                                  ? AppFonts.Red_16
                                  : AppFonts.DarkBLue_16,
                              textInputType: TextInputType.text,
                              obscure: index == 1 ? true : false,
                              height: 40,
                              width: double.infinity,
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
