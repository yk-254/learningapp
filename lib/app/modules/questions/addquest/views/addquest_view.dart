import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learningapp/app/data/fake.dart';
import 'package:learningapp/app/public/widgets/sushtextfields.dart';

import '../controllers/addquest_controller.dart';

class AddquestView extends GetView<AddquestController> {
  const AddquestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          height: Get.height,
          width: Get.width,
          child: SafeArea(
            child: Scaffold(
                // extendBodyBehindAppBar: true,
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
                            "اجازه",
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    )),
                body: Padding(
                  padding: const EdgeInsets.only(
                    right: 32,
                    left: 32,
                    top: 16,
                    bottom: 8,
                  ),
                  child: Column(
                    children: [
                      SushRichTextField(
                        controller: controller.quest,
                        hint: "سوال",
                        minline: 5,
                        maxline: 8,
                      ),
                      SushTextField(
                        hint: "درس",
                        controller: controller.lesson,
                      ),
                      SushTextField(
                        hint: "مقطع تحصیلی",
                        controller: controller.grade,
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        height: 40,
                        child: Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  fakeData.ques.add({
                                    "ques": controller.quest.text,
                                    "likes": 0,
                                    "name": "علی علیپور",
                                    "view": 0,
                                    "like": false
                                  });
                                  
                                  Get.offAllNamed('/questions');
                                },
                                child: const Text("بپرس"))
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
