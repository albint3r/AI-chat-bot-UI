// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ChatBotRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ChatBotRouteArgs>(
          orElse: () =>
              ChatBotRouteArgs(chatId: pathParams.getString('chatId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatBotPage(chatId: args.chatId),
      );
    },
    DashBoardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashBoardPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpPage(),
      );
    },
  };
}

/// generated route for
/// [ChatBotPage]
class ChatBotRoute extends PageRouteInfo<ChatBotRouteArgs> {
  ChatBotRoute({
    required String chatId,
    List<PageRouteInfo>? children,
  }) : super(
          ChatBotRoute.name,
          args: ChatBotRouteArgs(chatId: chatId),
          rawPathParams: {'chatId': chatId},
          initialChildren: children,
        );

  static const String name = 'ChatBotRoute';

  static const PageInfo<ChatBotRouteArgs> page =
      PageInfo<ChatBotRouteArgs>(name);
}

class ChatBotRouteArgs {
  const ChatBotRouteArgs({required this.chatId});

  final String chatId;

  @override
  String toString() {
    return 'ChatBotRouteArgs{chatId: $chatId}';
  }
}

/// generated route for
/// [DashBoardPage]
class DashBoardRoute extends PageRouteInfo<void> {
  const DashBoardRoute({List<PageRouteInfo>? children})
      : super(
          DashBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
