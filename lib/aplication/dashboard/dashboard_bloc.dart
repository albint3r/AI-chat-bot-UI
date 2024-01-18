import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/dashboard/i_dashboard_facade.dart';

part 'dashboard_event.dart';

part 'dashboard_state.dart';

part 'dashboard_bloc.freezed.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(IDashBoardFacade facade) : super(DashboardState.initial()) {
    on<_Started>((event, emit) {
      // TODO: implement event handler
    });
  }
}
