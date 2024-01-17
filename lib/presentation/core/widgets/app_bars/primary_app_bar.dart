import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../aplication/auth/auth_bloc.dart';
import '../../router/app_router.dart';
import '../text/text_body.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({this.actions, super.key});

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AppBar(
      backgroundColor: colorScheme.primary,
      actions: actions ??
          [
            TextButton(
              onPressed: () => context.read<AuthBloc>().add(
                    const AuthEvent.logOut(),
                  ),
              child: const TextBody('LogOut'),
            ),
            TextButton(
              onPressed: () => context.router.push(
                const DashBoardRoute(),
              ),
              child: const TextBody('Go Dashboard'),
            ),
          ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
