import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController controller = Get.put(BottomNavController());

    return Container(
      color: Colors.black,
      child: Obx(() {
        return BottomNavigationBar(
          showSelectedLabels: false,
          currentIndex: controller.selectedIndex.value,
          onTap: (value) {
            controller.changeIndex(value);
          },
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                label: "Home",
                icon: Icon(
                  Icons.home,
                  color: controller.selectedIndex.value == 0
                      ? Colors.orange
                      : Colors.grey.withOpacity(.6),
                )),
            BottomNavigationBarItem(
                label: "Shop",
                icon: Icon(
                  Icons.shopify,
                  color: controller.selectedIndex.value == 1
                      ? Colors.orange
                      : Colors.grey.withOpacity(.6),
                )),
            BottomNavigationBarItem(
                label: "Favourite",
                icon: Icon(
                  Icons.favorite,
                  color: controller.selectedIndex.value == 2
                      ? Colors.orange
                      : Colors.grey.withOpacity(.6),
                )),
            BottomNavigationBarItem(
                label: "Notifications",
                icon: Icon(
                  Icons.notification_add,
                  color: controller.selectedIndex.value == 3
                      ? Colors.orange
                      : Colors.grey.withOpacity(.6),
                )),
          ],
        );
      }),
    );
  }
}

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
