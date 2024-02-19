import 'package:flutter/material.dart';
import 'package:foodzax/features/personalization/screens/settings/settings.dart';
import 'package:foodzax/features/shop/screens/home/widget/home.dart';
import 'package:foodzax/features/shop/screens/store/store.dart';
import 'package:foodzax/features/shop/screens/wishlist/wishlist.dart';
import 'package:foodzax/utils/constants/colors.dart';
import 'package:foodzax/utils/helpers/helpers.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({super.key});

  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          height: 80,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.black : Colors.white,
          indicatorColor: darkMode
              ? TColors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screen = [
    const HomeScreen(),
    const Store(),
    const FavouriteScreen(),
    const SettingsScreen(),
  ];
}
