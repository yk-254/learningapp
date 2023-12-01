
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:learningapp/app/public/cards/video_cards.dart';
import 'package:learningapp/app/public/search_bar.dart';

import '../controllers/courses_controller.dart';

class CoursesView extends GetView<CoursesController> {
  const CoursesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 8, 32, 16),
                child: searchBar(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 32,
                  left: 32,
                  top: 16,
                  bottom: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/course.svg",
                      color: Colors.black,
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: 12),
                    Text(
                      'جدیدترین ها',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ListView.builder(
                itemCount: 16,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                // padding: EdgeInsets.only(left: 16, right: 8),
                itemBuilder: (context, index) {
                  return VideoCards();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
