import 'package:get/get.dart';

import '../modules/color/color_binding.dart';
import '../modules/color/color_view.dart';
import '../modules/flip/flip_binding.dart';
import '../modules/flip/flip_view.dart';
import '../modules/friction/friction_binding.dart';
import '../modules/friction/friction_view.dart';
import '../modules/gravity/gravity_binding.dart';
import '../modules/gravity/gravity_view.dart';
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/size/size_binding.dart';
import '../modules/size/size_view.dart';
import '../modules/size2/size2_view.dart';
import '../modules/spring/spring_binding.dart';
import '../modules/spring/spring_view.dart';
import '../modules/translate/translate_binding.dart';
import '../modules/translate/translate_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIZE,
      page: () => const SizeView(),
      binding: SizeBinding(),
    ),
    GetPage(
      name: _Paths.SIZE2,
      page: () => const Size2View(),
    ),
    GetPage(
      name: _Paths.COLOR,
      page: () => const ColorView(),
      binding: ColorBinding(),
    ),
    GetPage(
      name: _Paths.FLIP,
      page: () => const FlipView(),
      binding: FlipBinding(),
    ),
    GetPage(
      name: _Paths.TRANSLATE,
      page: () => const TranslateView(),
      binding: TranslateBinding(),
    ),
    GetPage(
      name: _Paths.GRAVITY,
      page: () => const GravityView(),
      binding: GravityBinding(),
    ),
    GetPage(
      name: _Paths.FRICTION,
      page: () => const FrictionView(),
      binding: FrictionBinding(),
    ),
    GetPage(
      name: _Paths.SPRING,
      page: () => const SpringView(),
      binding: SpringBinding(),
    ),
  ];
}
