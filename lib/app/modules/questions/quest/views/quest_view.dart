import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learningapp/app/data/fake.dart';
import 'package:learningapp/app/public/cards/acontainer.dart';
import 'package:learningapp/app/public/cards/qcontainer.dart';
import 'package:learningapp/app/public/search_bar.dart';

import '../controllers/quest_controller.dart';

class QuestView extends GetView<QuestController> {
  const QuestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: Get.height,
          width: Get.width,
          color: Colors.white,
        ),
        SizedBox(
          height: Get.height,
          width: Get.width,
          child: SafeArea(
            child: Scaffold(
                // extendBodyBehindAppBar: true,
                backgroundColor: Colors.transparent,
                appBar: PreferredSize(
                    preferredSize: Size(Get.width, 105),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 32,
                        left: 32,
                        top: 16,
                        bottom: 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: const Color(0xffFF8787),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  width: 2),
                            ),
                            child: InkWell(
                              onTap: () {
                                Get.toNamed("/home");
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            " اجازه",
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    )),
                body: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 32,
                      left: 32,
                      top: 16,
                      bottom: 8,
                    ),
                    child: Column(
                      children: [
                        searchBar(),
                        const SizedBox(
                          height: 8,
                        ),
                        QContainer(
                            like: fakeData.ques
                                .elementAt(QuestController.index)['like'],
                            name: fakeData.ques
                                .elementAt(QuestController.index)['name'],
                            message: fakeData.ques
                                .elementAt(QuestController.index)['ques'],
                            view: fakeData.ques
                                .elementAt(QuestController.index)['view'],
                            likes: fakeData.ques
                                .elementAt(QuestController.index)['likes']),
                        ///////////////////////////////////////////////////
                        ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return  Center(child: AContainer());
                            })
                      ],
                    ),
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
