import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class QContainer extends StatelessWidget {
  final String name;
  final String message;
  final int likes;
  final int view;
  final bool like;
  QContainer(
      {super.key,
      required this.like,
      required this.name,
      required this.message,
      required this.view,
      required this.likes});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: SmoothBorderRadius(cornerRadius: 50, cornerSmoothing: 1.1),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        //height: 220,
        // width: 300,
        decoration: ShapeDecoration(
            color: Color(0xFFe8f4f4),
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
                            color: Color(0xFF48b2ac),
                          ),
                          Text(
                            "سوال",
                            style: TextStyle(
                                color: Color(0xFF48b2ac),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      Text(
                        name,
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
                  SizedBox(
                    width: 300,
                    child: Text(
                      message,
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
                like
                    ? Container(
                        margin: const EdgeInsets.only(left: 15),
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFF444444), width: 2),
                            color: const Color(0xFF48b2ac),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                            child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 19,
                        )),
                      )
                    : Container()
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
                          Text(likes.toString(),
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
                          Center(
                              child: Text(view.toString(),
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
