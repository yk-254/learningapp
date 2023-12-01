import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class AContainer extends StatelessWidget {
  const AContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: SmoothBorderRadius(cornerRadius: 50, cornerSmoothing: 1.1),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        //height: 220,
        //width: 300,
        decoration: ShapeDecoration(
            color: Color(0xFFfeefef),
            shape: SmoothRectangleBorder(
              borderRadius:
                  SmoothBorderRadius(cornerRadius: 50, cornerSmoothing: 1.1),
              side: BorderSide(width: 2, color: Color(0xFF444444)),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.question_mark_rounded,
                            color: Color(0xFFfa8b8b),
                          ),
                          Text(
                            "پاسخ",
                            style: TextStyle(
                                color: Color(0xFFfa8b8b),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      Text(
                        "عباس میرزائی",
                        style: TextStyle(
                            color: Color(0xFF444444),
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 300,
                    child: Text(
                      "برای حل این سوال میتوانید .......",
                      style: TextStyle(
                          height: 1.5, color: Color(0xFF444444), fontSize: 14),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xFF444444), width: 2),
                      color: const Color(0xFFfa8b8b),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Center(
                      child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 19,
                  )),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Divider(
                  color: Color(0xFF444444),
                  thickness: 2,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(80, 40),
                    ),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.question_answer_outlined,
                              color: Color(0xFFFFBB0C), size: 17),
                          SizedBox(
                            width: 5,
                          ),
                          const Center(
                              child: Text(
                            "1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          )),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.favorite,
                            color: Color(0xFFFF8787),
                            size: 17,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("51",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14)),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.remove_red_eye_rounded,
                            color: Color(0xFF49B0AA),
                            size: 17,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          const Center(
                              child: Text("198",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14))),
                          // SizedBox(width: 5,),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
