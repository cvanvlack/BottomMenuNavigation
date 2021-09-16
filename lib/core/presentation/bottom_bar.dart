import 'package:bottom_menu_navigation/core/application/page_notifier.dart';

import 'package:bottom_menu_navigation/core/presentation/routes/app_router.gr.dart';
import 'package:bottom_menu_navigation/core/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomBar extends ConsumerWidget {
  const BottomBar({Key? key}) : super(key: key);

  static const double navigationIconSize = 20.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkTheme =
        ref.read(pageStateNotifierProvider.notifier).pageState ==
            const PageState.feedPage();

    final int menuIndex = 0;

    return BottomNavigationBar(
      iconSize: navigationIconSize,
      currentIndex: menuIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: isDarkTheme ? Colors.black : Colors.white,
      selectedItemColor: isDarkTheme ? Colors.white : Colors.black,
      unselectedItemColor: isDarkTheme ? Colors.white70 : Colors.black54,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 11.0,
      ),
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 11.0,
      ),
      onTap: (index) {
        print(index);
        switch (index) {
          case 0:
            ref.read(pageStateNotifierProvider.notifier).pageState =
                const PageState.feedPage();
            ref.read(appRouterProvider).replace(const FeedRoute());
            break;
          case 1:
            ref.read(pageStateNotifierProvider.notifier).pageState =
                const PageState.searchPage();
            ref.read(appRouterProvider).replace(const SearchRoute());
            break;
          case 2:
            ref.read(pageStateNotifierProvider.notifier).pageState =
                const PageState.buyPage();
            ref.read(appRouterProvider).replace(const BuyRoute());
            break;
          case 3:
            ref.read(pageStateNotifierProvider.notifier).pageState =
                const PageState.messagesPage();
            ref.read(appRouterProvider).replace(const MessagesRoute());
            break;
          case 4:
            ref.read(pageStateNotifierProvider.notifier).pageState =
                const PageState.profilePage();
            ref.read(appRouterProvider).replace(const ProfileRoute());
            break;
          default:
            ref.read(pageStateNotifierProvider.notifier).pageState =
                const PageState.feedPage();
            ref.read(appRouterProvider).replace(const FeedRoute());
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Buy',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contacts),
          label: 'Profile',
        ),
      ],
    );
  }
}
