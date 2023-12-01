

import 'package:learningapp/app/data/models/page.dart';
import 'package:learningapp/app/modules/courses/views/courses_view.dart';
import 'package:learningapp/app/modules/profile/views/profile_view.dart';
import 'package:learningapp/app/modules/questions/views/questions_view.dart';

var url = "assets/svg";
final pages = [
  Pages(
      name: "آموزش", page: CoursesView(), svg: "$url/course.svg", index: 0),
  Pages(
      name: "سؤالات", page: QuestionsView(), svg: "$url/quest.svg", index: 1),
  Pages(name: "پرونده", page: ProfileView(), svg: "$url/person.svg", index: 2),
];
