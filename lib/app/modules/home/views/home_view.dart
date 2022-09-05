import 'package:dasboard_kit_with_getx/app/modules/overview/views/overview_view.dart';
import 'package:dasboard_kit_with_getx/app/modules/shared/theme.dart';
import 'package:dasboard_kit_with_getx/app/modules/tickets/views/tickets_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_side_menu.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Drawer(
            elevation: 5,
            backgroundColor: kPrimaryColor,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 37,
                    left: 32,
                    right: 43,
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'img/logo.png',
                        width: 32,
                        height: 32,
                      ),
                      SizedBox(width: 12),
                      Text(
                        'Dasboard Kit',
                        style: lightTextStyle.copyWith(
                          fontSize: 19,
                          fontWeight: bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 63),
                SideMenu(
                  title: 'Overview',
                  icon: 'icon/overview.svg',
                  selectColor: 0,
                  // active: selected[0],
                  onPress: () {
                    controller.select(0);
                    controller.changeTabIndex(0);
                  },
                ),
                SizedBox(height: 12),
                SideMenu(
                  title: 'Tickets',
                  icon: 'icon/tickets.svg',
                  selectColor: 1,
                  onPress: () {
                    controller.select(1);
                    controller.changeTabIndex(1);
                  },
                ),
                SizedBox(height: 12),
                SideMenu(
                  title: 'Ideas',
                  icon: 'icon/ideas.svg',
                  selectColor: 2,
                  onPress: () {
                    controller.select(2);
                    // controller.changeTabIndex(1);
                  },
                ),
                SizedBox(height: 12),
                SideMenu(
                  title: 'Contacts',
                  icon: 'icon/contact.svg',
                  selectColor: 3,
                  onPress: () {
                    controller.select(3);
                    // controller.changeTabIndex(n);
                  },
                ),
                SizedBox(height: 12),
                SideMenu(
                  title: 'Agents',
                  icon: 'icon/agent.svg',
                  selectColor: 4,
                  onPress: () {
                    controller.select(4);
                    // controller.changeTabIndex(n);
                  },
                ),
                SizedBox(height: 12),
                SideMenu(
                  title: 'Articles',
                  icon: 'icon/article.svg',
                  selectColor: 5,
                  onPress: () {
                    controller.select(5);
                    // controller.changeTabIndex(n);
                  },
                ),
                SizedBox(height: 16),
                Divider(
                  height: 2,
                  color: kgreyColor4.withOpacity(0.1),
                ),
                SizedBox(height: 16),
                SideMenu(
                  title: 'Settings',
                  icon: 'icon/setting.svg',
                  selectColor: 6,
                  onPress: () {
                    controller.select(6);
                    // controller.changeTabIndex(n);
                  },
                ),
                SizedBox(height: 12),
                SideMenu(
                  title: 'Subscription',
                  icon: 'icon/subscription.svg',
                  selectColor: 7,
                  onPress: () {
                    controller.select(7);
                    // controller.changeTabIndex(1);
                  },
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
          Expanded(
            child: Obx(
              () => IndexedStack(
                index: controller.tabIndex.value,
                children: [
                  OverviewView(),
                  TicketsView(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
