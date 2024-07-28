import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vikncodes_task/pages/dashborde/home_page.dart';
import 'package:vikncodes_task/pages/profile_page.dart';

//Define State Providers
final selectedIndexProvider = StateProvider<int>((ref) => 0);
final pageControllerProvider =
    Provider<PageController>((ref) => PageController());

class BottomNaviagtionPage extends ConsumerWidget {
  static const routePath = '/bottomnav';
  const BottomNaviagtionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider.notifier).state;
    final pageController = ref.watch(pageControllerProvider);

    void onItemTapped(int index) {
      ref.watch(selectedIndexProvider.notifier).state = index;
      pageController.jumpToPage(index);
    }

    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const <Widget>[
          HomePage(),
          Center(child: Text("")),
          Center(child: Text("")),
          ProfilePage()
        ],
        onPageChanged: (index) {
          ref.watch(selectedIndexProvider.notifier).state = index;
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        fixedColor: Colors.black,
        // type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: onItemTapped,

        items: const [
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/image/home-unselect.png')),
            activeIcon: Image(image: AssetImage('assets/image/home.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/image/route-square.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon:
                Image(image: AssetImage('assets/image/notification-bing.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image(image: AssetImage('assets/image/profile.png')),
            activeIcon:
                Image(image: AssetImage('assets/image/profile-select.png')),
            label: '',
          ),
        ],
      ),
    );
  }
}
