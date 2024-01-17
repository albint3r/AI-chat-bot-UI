import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../../../aplication/auth/auth_bloc.dart';
import '../../../domain/auth/app_user.dart';
import '../../auth/login/login_page.dart';
import '../../auth/signup/signup_page.dart';
import '../../chatbot/chatbot_page.dart';
import '../../dashboard/dashboard_page.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends _$AppRouter implements AutoRouteGuard {
  AppRouter(this._auth);

  final AuthBloc _auth;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: ChatBotRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: SignUpRoute.page,
        ),
        AutoRoute(
          page: DashBoardRoute.page,
        ),
      ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (isUserAuthenticated(resolver)) {
      resolver.next();
    } else {
      resolver.redirect(
        const LoginRoute(),
      );
    }
  }

  /// Validate the user is login or if the user want to nav to log or singing.
  bool isUserAuthenticated(NavigationResolver resolver) {
    final appUser = _auth.state.appUser;
    final nameToResolve = resolver.route.name;
    return appUser is AppUser ||
        nameToResolve == LoginRoute.name ||
        nameToResolve == SignUpRoute.name ||
        nameToResolve == ChatBotRoute.name;
  }
}
