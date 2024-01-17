import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'widgets/body_dashboard.dart';

@RoutePage()
class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BodyDashBoard(),
      ),
    );
  }
}
