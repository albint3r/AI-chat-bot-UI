import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:l/l.dart';

@singleton
class RouterObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) =>
      l.i('New route pushed: ${route.settings.name}');

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) =>
      l.i('Tab route visited: ${route.name}');

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) =>
      l.i('Tab route re-visited: ${route.name}');
}
