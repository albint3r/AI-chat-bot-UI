import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'aplication/auth/auth_bloc.dart';
import 'app.dart';
import 'infrastructure/core/app_bloc_observer.dart';
import 'injectables.dart';

Future<void> main() async {
  await configureDependencies(Environment.prod);
  final messengerKey = GlobalKey<ScaffoldMessengerState>();
  Bloc.observer = AppBlocObserver(messengerKey);
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: getIt<AuthBloc>()
            ..add(
              const AuthEvent.validateToken(),
            ),
        ),
      ],
      child: App(messengerKey),
    ),
  );
}
