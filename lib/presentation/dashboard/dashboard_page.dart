import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../aplication/dashboard/dashboard_bloc.dart';
import '../../injectables.dart';
import '../core/widgets/app_bars/primary_app_bar.dart';
import 'widgets/body_dashboard.dart';

@RoutePage()
class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DashboardBloc>()
        ..add(
          const DashboardEvent.started(),
        ),
      child: const SafeArea(
        child: Scaffold(
          appBar: PrimaryAppBar(),
          body: BodyDashBoard(),
        ),
      ),
    );
  }
}
