import 'package:get/get.dart';
import 'package:travel_hotel_booking/app/modules/home/views/secondPage.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const SecondPage(),
      binding: HomeBinding(),
    ),
  ];
}
