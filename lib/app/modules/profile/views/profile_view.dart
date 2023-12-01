import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      final screenWidth = constraints.maxWidth;
      final screenHeight = constraints.maxHeight;
      return Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          // Positioned(
          //   top: -70,
          //   right: -70,
          //   child: ColorFiltered(
          //     colorFilter: ColorFilter.mode(
          //       Color(0xff2C2C2C).withOpacity(
          //           0.3), // شفافیت مورد نظر را اینجا تعیین کنید
          //       BlendMode.dstATop,
          //     ),
          //     child: Container(
          //       width: 350,
          //       height: 350,
          //       decoration: const BoxDecoration(
          //         image: DecorationImage(
          //           image: AssetImage('assets/bg/bg.png'),
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: screenWidth,
                  height: screenHeight,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xffFFBB0C),
                              width: 2,
                            ),
                          ),
                          child: ClipOval(
                            child: Image.asset("assets/img/prof.jpg",fit: BoxFit.cover,),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        const Text(
                          'علی علیپور',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'shabnam',
                              color: Color.fromARGB(255, 160, 157, 157)),
                        ),
                        const Text(
                          'کاربر عادی',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'shabnam',
                              color: Color.fromARGB(255, 160, 157, 157)),
                        ),
                        const Divider(
                          color: Colors.white24,
                          thickness: 1,
                          height: 30,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(
                              width: 100,
                              height: 50.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '40',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'shabnam',
                                        color: Color.fromARGB(255, 160, 157, 157)),
                                  ),
                                  Text(
                                    'پرسش باقی مانده',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'shabnam',
                                        color: Color.fromARGB(255, 160, 157, 157)),
                                  ),
                                ],
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: SizedBox(
                                width: 80.0,
                                height: 45.0,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(30),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color(0xffFFBB0C))),
                                  onPressed: () {
                                    Get.toNamed("/profile/salepack");
                                  },
                                  child: const Center(
                                    child: Text('شارژ حساب',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontFamily: 'shabnam')),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 100,
                              height: 50.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '12',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'shabnam',
                                        color: Color.fromARGB(255, 160, 157, 157)),
                                  ),
                                  Text(
                                    'تعداد سوالات',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'shabnam',
                                        color: Color.fromARGB(255, 160, 157, 157)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50.0),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Container(
                                    color: const Color.fromARGB(31, 138, 137, 137),
                                    width: screenWidth / 1.1,
                                    height: 60.0,
                                    child: Row(
                                      // تلفن تماس
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Container(
                                            width: 35.0,
                                            height: 35.0,
                                            color: const Color.fromARGB(31, 138, 137, 137),
                                            child: const Center(
                                              child: Icon(Icons.call),
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          '09130563717',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'shabnam',
                                              letterSpacing: 2,
                                              color: Color.fromARGB(255, 160, 157, 157)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  color: const Color(0xff48b2ac),
                                  width: screenWidth / 6,
                                  height: 60.0,
                                  child: Row(
                                    // تلفن تماس
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Container(
                                          width: 35.0,
                                          height: 35.0,
                                          color: const Color(0xffD9D9D9),
                                          child: const Center(
                                            child: Icon(Icons.edit),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Container(
                                    color: const Color.fromARGB(31, 138, 137, 137),
                                    width: screenWidth / 1.1,
                                    height: 60.0,
                                    child: Row(
                                      // تلفن تماس
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Container(
                                            width: 35.0,
                                            height: 35.0,
                                            color: const Color(0xffD9D9D9),
                                            child: const Center(
                                              child: Icon(
                                                  Icons.auto_stories_rounded),
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          'دوم ابتدایی',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'shabnam',
                                              letterSpacing: 2,
                                              color: Color.fromARGB(255, 160, 157, 157)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Container(
                                  color: const Color(0xff48b2ac),
                                  width: screenWidth / 6,
                                  height: 60.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Container(
                                          width: 35.0,
                                          height: 35.0,
                                          color: const Color(0xffD9D9D9),
                                          child: const Center(
                                            child: Icon(Icons.edit),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      );
    })));
  }
}
