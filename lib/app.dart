import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'domain/core/types.dart';
import 'infrastructure/core/config_form_validators.dart';
import 'injectables.dart';
import 'presentation/core/router/app_router.dart';
import 'presentation/core/router/material_app_router_delegate.dart';
import 'presentation/core/router/router_observer.dart';
import 'presentation/core/theme/theme_config.dart';

class App extends StatelessWidget {
  const App(
    this.messengerKey, {
    super.key,
  });

  final GlobalKey<ScaffoldMessengerState> messengerKey;

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    final themeConfig = getIt<ThemeConfig>();
    final routerObserver = getIt<RouterObserver>();
    return ReactiveFormConfig(
      // Global configuration to set the form error msg.
      validationMessages: ConfigFormValidators.getValidators(),
      child: MaterialAppRouterDelegate.router(
        'ChatBot:Alberto CV',
        appRouter: appRouter,
        themeConfig: themeConfig,
        messengerKey: messengerKey,
        context: context,
        observer: routerObserver,
      ),
    );
  }
}
