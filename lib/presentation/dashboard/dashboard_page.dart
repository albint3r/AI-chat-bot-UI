import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../core/widgets/app_bars/primary_app_bar.dart';
import 'widgets/body_dashboard.dart';

@RoutePage()
class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: PrimaryAppBar(),
        body: BodyDashBoard(),
      ),
    );
  }
}
