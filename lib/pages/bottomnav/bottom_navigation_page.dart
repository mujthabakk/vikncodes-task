import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vikncodes_task/pages/dashborde/home_page.dart';
import 'package:vikncodes_task/pages/profile_page.dart';

// Define State Providers
final selectedProvider = StateProvider<int>((ref) => 0);

class BottomNaviagtionPage extends ConsumerStatefulWidget {
  static const routePath = '/bottomnav';
  const BottomNaviagtionPage({super.key});

  @override
  ConsumerState<BottomNaviagtionPage> createState() => _BottomNaviagtionPageState();
}

class _BottomNaviagtionPageState extends ConsumerState<BottomNaviagtionPage> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(selectedProvider);

    void onItemTapped(int index) {
      ref.read(selectedProvider.notifier).state = index;
      _pageController.jumpToPage(index);
    }

    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(), // Disable scrolling
        controller: _pageController,
        children: const <Widget>[
          HomePage(),
          Center(child: Text("")),
          Center(child: Text("")),
          ProfilePage(),
        ],
        onPageChanged: (index) {
          ref.read(selectedProvider.notifier).state = index;
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        fixedColor: Colors.black,
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
