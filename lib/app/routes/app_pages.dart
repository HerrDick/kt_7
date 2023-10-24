import 'package:get/get.dart';

import '../modules/car_page/bindings/car_page_binding.dart';
import '../modules/car_page/views/car_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

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
      name: _Paths.CAR_PAGE,
      page: () => const CarPageView(),
      binding: CarPageBinding(),
    ),
  ];
}
