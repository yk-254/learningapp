import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class VideoCards extends StatelessWidget {
  const VideoCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 355,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            height: 220,
            width: Get.width,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/tests/ostad_daneshgah.jpg"),
              ),
              shape: SmoothRectangleBorder(
                borderRadius:
                    SmoothBorderRadius(cornerRadius: 35, cornerSmoothing: 1.1),
                side: const BorderSide(
                  width: 2,
                  color: Colors.black,
                ),
              ),
            ),
            child: Image.asset(
               "assets/img/play.png",
              height: 50,
              width: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Get.width,
                  child: Text(
                    'آموزش ریاضی پیشرفته متوسطه دوره ی اول',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/svg/person.svg" , width: 20 , height: 20,),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'عباس میرزائی',
                      style: TextStyle(
                        color: Color.fromARGB(255, 155, 151, 151),
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Container(
                      // height: 38,
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      decoration: BoxDecoration(
                        color: const Color(0xffFFBB0C),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xff926900),
                        ),
                      ),
                      child: const Text(
                        'ریاضی',
                        softWrap: true,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 38,
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      decoration: BoxDecoration(
                        color: const Color(0xff49B0AA),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xff00534E),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'سوم متوسطه دوره اول',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
