// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../../buy/presentation/buy_page.dart' as _i5;
import '../../../feed/presentation/feed_page.dart' as _i3;
import '../../../messages/presentation/messages_page.dart' as _i4;
import '../../../profile/presentation/profile_page.dart' as _i6;
import '../../../search/presentation/search_page.dart' as _i7;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    FeedRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.FeedPage();
        }),
    MessagesRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.MessagesPage();
        }),
    BuyRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.BuyPage();
        }),
    ProfileRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.ProfilePage();
        }),
    SearchRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.SearchPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect',
            path: '/', redirectTo: '/feed', fullMatch: true),
        _i1.RouteConfig(FeedRoute.name, path: '/feed'),
        _i1.RouteConfig(MessagesRoute.name, path: '/messages'),
        _i1.RouteConfig(BuyRoute.name, path: '/buy'),
        _i1.RouteConfig(ProfileRoute.name, path: '/profile'),
        _i1.RouteConfig(SearchRoute.name, path: '/search')
      ];
}

class FeedRoute extends _i1.PageRouteInfo {
  const FeedRoute() : super(name, path: '/feed');

  static const String name = 'FeedRoute';
}

class MessagesRoute extends _i1.PageRouteInfo {
  const MessagesRoute() : super(name, path: '/messages');

  static const String name = 'MessagesRoute';
}

class BuyRoute extends _i1.PageRouteInfo {
  const BuyRoute() : super(name, path: '/buy');

  static const String name = 'BuyRoute';
}

class ProfileRoute extends _i1.PageRouteInfo {
  const ProfileRoute() : super(name, path: '/profile');

  static const String name = 'ProfileRoute';
}

class SearchRoute extends _i1.PageRouteInfo {
  const SearchRoute() : super(name, path: '/search');

  static const String name = 'SearchRoute';
}
