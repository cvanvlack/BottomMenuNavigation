import 'package:auto_route/annotations.dart';
import 'package:bottom_menu_navigation/buy/presentation/buy_page.dart';
import 'package:bottom_menu_navigation/feed/presentation/feed_page.dart';
import 'package:bottom_menu_navigation/messages/presentation/messages_page.dart';
import 'package:bottom_menu_navigation/profile/presentation/profile_page.dart';
import 'package:bottom_menu_navigation/search/presentation/search_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: FeedPage, initial: true, path: '/feed'),
    MaterialRoute(page: MessagesPage, path: '/messages'),
    MaterialRoute(page: BuyPage, path: '/buy'),
    MaterialRoute(page: ProfilePage, path: '/profile'),
    MaterialRoute(page: SearchPage, path: '/search'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
