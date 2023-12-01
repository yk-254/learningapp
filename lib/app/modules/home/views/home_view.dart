import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:learningapp/app/data/pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: pages.length,
        allowImplicitScrolling: false,
        physics: NeverScrollableScrollPhysics(),
        pageSnapping: false,
        itemBuilder: (context, index) => Obx(() => Stack(
              clipBehavior: Clip.none,
              children: [
                // Positioned(
                //   right: -100,
                //   top: -100,
                //   child: Opacity(
                //     opacity: 0.2,
                //     child: Image.asset(
                //        "assets/bg/bg.png",
                //       width: Get.width*1.1,
                //       height: Get.width*1.1,
                //     ),
                //   ),
                // ),
                pages.elementAt(controller.indexPage.value).page,
              ],
            )),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 25, right: 25, bottom: 10),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        height: 60,
        decoration: BoxDecoration(
          color: Color(0xff48b2ac),
          // color: theme.accentColor,
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: pages
              .map((e) => Obx(
                    () => GestureDetector(
                      onTap: () => controller.indexPage.value = e.index,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: e.index == controller.indexPage.value
                                ? Color(0xfffee500)
                                : Color(0xff48b2ac),
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: e.index == controller.indexPage.value
                                    ? Color(0xfffee500)
                                    : Colors.transparent,
                                width: 2)),
                        child: SvgPicture.asset(
                          e.svg,
                          color: e.index == controller.indexPage.value
                              ? Colors.black
                              : Colors.white,
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
