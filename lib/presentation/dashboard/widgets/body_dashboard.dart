import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../aplication/dashboard/dashboard_bloc.dart';
import '../../core/widgets/text/text_body.dart';
import '../../core/widgets/text/text_title.dart';
import 'lateral_menu.dart';

class BodyDashBoard extends StatelessWidget {
  const BodyDashBoard({this.children = const [], super.key});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final dashboard = context.watch<DashboardBloc>().state;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final size = MediaQuery.of(context).size;
    if (dashboard.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Row(
      children: [
        const LateralMenu(),
        Expanded(
          child: Column(
            children: dashboard.userChatBots
                .map(
                  (userChat) => ListTile(
                    title: TextTitle.h3(userChat.name),
                    subtitle: TextBody(userChat.indexName),
                    trailing: const Icon(Icons.router),
                  ),
                )
                .toList(),
          ),
        )
      ],
    );
  }
}
