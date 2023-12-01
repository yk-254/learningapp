import 'package:get/get.dart';

import '../modules/courses/bindings/courses_binding.dart';
import '../modules/courses/views/courses_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/salepack/bindings/salepack_binding.dart';
import '../modules/profile/salepack/views/salepack_view.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/questions/addquest/bindings/addquest_binding.dart';
import '../modules/questions/addquest/views/addquest_view.dart';
import '../modules/questions/bindings/questions_binding.dart';
import '../modules/questions/quest/bindings/quest_binding.dart';
import '../modules/questions/quest/views/quest_view.dart';
import '../modules/questions/views/questions_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.COURSES,
      page: () => const CoursesView(),
      binding: CoursesBinding(),
    ),
    GetPage(
      name: _Paths.QUESTIONS,
      page: () => const QuestionsView(),
      binding: QuestionsBinding(),
      children: [
        GetPage(
          name: _Paths.QUEST,
          page: () => const QuestView(),
          binding: QuestBinding(),
        ),
        GetPage(
          name: _Paths.ADDQUEST,
          page: () => const AddquestView(),
          binding: AddquestBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
      children: [
        GetPage(
          name: _Paths.SALEPACK,
          page: () => SalepackView(),
          binding: SalepackBinding(),
        ),
      ],
    ),
    
  ];
}
