import 'package:get/get.dart';

import 'package:dasboard_kit_with_getx/app/modules/home/bindings/home_binding.dart';
import 'package:dasboard_kit_with_getx/app/modules/home/views/home_view.dart';
import 'package:dasboard_kit_with_getx/app/modules/overview/bindings/overview_binding.dart';
import 'package:dasboard_kit_with_getx/app/modules/overview/views/overview_view.dart';
import 'package:dasboard_kit_with_getx/app/modules/tickets/bindings/tickets_binding.dart';
import 'package:dasboard_kit_with_getx/app/modules/tickets/views/tickets_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.OVERVIEW,
      page: () => OverviewView(),
      binding: OverviewBinding(),
    ),
    GetPage(
      name: _Paths.TICKETS,
      page: () => TicketsView(),
      binding: TicketsBinding(),
    ),
  ];
}
