import 'package:flutter/material.dart';
import 'package:takatuf/components/app_bar.dart';
import 'package:takatuf/screens/home_content.dart';
import 'package:takatuf/theme/colors.dart';
import 'package:takatuf/theme/fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: TabBar(
                    labelPadding: EdgeInsets.only(bottom: 10),
                    indicatorColor: AppColors.DarkBlue,
                    indicatorPadding: EdgeInsets.only(top: 10),
                    labelColor: AppColors.DarkBlue,
                    unselectedLabelColor: Colors.grey,
                    unselectedLabelStyle: AppFonts.grey_12,
                    labelStyle: AppFonts.DarkBLue_12,
                    tabs: [
                      Text(
                        'الكل',
                      ),
                      Text(
                        'ملابس',
                      ),
                      Text(
                        'أثاث',
                      ),
                      Text(
                        'جوالات',
                      ),
                      Text(
                        'الخ',
                      )
                    ]),
              ),
              title: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.asset('assets/images/profile.jpg')),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                'تكاتف',
                                style: AppFonts.DarkBLue_16,
                              ),
                              Text(
                                'takatuf',
                                style: AppFonts.DarkBLue_16,
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications,
                          color: AppColors.DarkBlue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
        body: TabBarView(
          // controller: controller,
          children: [
            HomeContent(),
            HomeContent(),
            HomeContent(),
            HomeContent(),
            HomeContent(),
          ],
        ),
      ),
    );
  }
}
