import 'package:flutter/material.dart';
import 'package:takatuf/theme/colors.dart';
import 'package:takatuf/theme/fonts.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: Icon(Icons.favorite_border,color: AppColors.DarkBlue,)),
            Container(
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color.fromARGB(255, 197, 196, 196)),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 197, 196, 196),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'طقم كنب مع طاولة خدمة',
                            style: AppFonts.DarkBLue_14,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'طقم طقم طقم طقم طقم طقم',
                            style: AppFonts.light_grey_12,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.timer_outlined,
                                      color: AppColors.DarkBlue,
                                      size: 20,
                                    ),
                                    Text(
                                      'الان',
                                      style: AppFonts.DarkBLue_10,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: AppColors.DarkBlue,
                                      size: 20,
                                    ),
                                    Text(
                                      'الموقع',
                                      style: AppFonts.DarkBLue_10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
