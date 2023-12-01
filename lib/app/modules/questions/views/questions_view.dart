
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:learningapp/app/data/fake.dart';
import 'package:learningapp/app/modules/questions/quest/controllers/quest_controller.dart';
import 'package:learningapp/app/public/cards/qcontainer.dart';
import 'package:learningapp/app/public/search_bar.dart';

import '../controllers/questions_controller.dart';

class QuestionsView extends GetView {
  const QuestionsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: GetBuilder(
              id: "ques",
              init: QuestionsController(),
              builder: (controller) {
                return Column(
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
                          SizedBox(
                            height: 22,
                            width: 22,
                            child: SvgPicture.asset("assets/svg/course.svg",
                                fit: BoxFit.contain, color: Colors.black),
                          ),
                          const SizedBox(width: 12),
                          const Text(
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
                    const SizedBox(
                      height: 8,
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: fakeData.ques.length,
                        itemBuilder: (context, index) {
                          return Center(
                            child: Column(
                              children: [
                                InkWell(
                                    onTap: () {
                                      QuestController.index=index;
                                      Get.toNamed("/questions/quest");
                                    },
                                    child: QContainer(
                                      likes: fakeData.ques
                                          .elementAt(index)['likes'],
                                      message: fakeData.ques
                                          .elementAt(index)['ques'],
                                      name: fakeData.ques
                                          .elementAt(index)['name'],
                                      view: fakeData.ques
                                          .elementAt(index)['view'],
                                      like: fakeData.ques
                                          .elementAt(index)['like'],
                                    ))
                              ],
                            ),
                          );
                        }),
                  ],
                );
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.offAllNamed("/questions/addquest"),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
