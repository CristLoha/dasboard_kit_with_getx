import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt tabIndex = 0.obs;
  RxBool isExpanded = false.obs;

  RxList<bool> selected = [true, false, false, false, false].obs;

  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
}
