// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:flutter/material.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import 'aplication/auth/auth_bloc.dart' as _i14;
import 'aplication/chatbot/chatbot_bloc.dart' as _i15;
import 'domain/chatbot/i_chatbot_data_source.dart' as _i9;
import 'domain/chatbot/i_chatbot_facade.dart' as _i11;
import 'infrastructure/chatbot/chatbot_data_source_impl.dart' as _i10;
import 'infrastructure/chatbot/chatbot_facade_impl.dart' as _i12;
import 'infrastructure/core/app_bloc_observer.dart' as _i3;
import 'infrastructure/core/register_module.dart' as _i16;
import 'infrastructure/core/shared_pref.dart' as _i13;
import 'presentation/core/router/app_router.dart' as _i5;
import 'presentation/core/theme/theme_config.dart' as _i8;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factoryParam<_i3.AppBlocObserver,
      _i4.GlobalKey<_i4.ScaffoldMessengerState>?, dynamic>((
    _messenger,
    _,
  ) =>
      _i3.AppBlocObserver(_messenger));
  gh.singleton<_i5.AppRouter>(_i5.AppRouter());
  gh.factory<_i6.BaseOptions>(() => registerModule.getDioBaseOptions());
  gh.factory<Iterable<_i6.Interceptor>>(() => registerModule.getInterceptors());
  await gh.factoryAsync<_i7.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i8.ThemeConfig>(_i8.ThemeConfig());
  gh.singleton<Uri>(registerModule.getUriWebSocket());
  gh.singleton<_i6.Dio>(registerModule.getDio(
    gh<_i6.BaseOptions>(),
    gh<Iterable<_i6.Interceptor>>(),
  ));
  gh.factory<_i9.IChatBotDataSource>(() => _i10.ChatBotDataSourceImpl(
        gh<_i6.Dio>(),
        gh<Uri>(),
      ));
  gh.factory<_i11.IChatBotFacade>(
      () => _i12.ChatBotFacadeImpl(gh<_i9.IChatBotDataSource>()));
  gh.lazySingleton<_i13.SharedPref>(
      () => _i13.SharedPref(gh<_i7.SharedPreferences>()));
  gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(gh<_i13.SharedPref>()));
  gh.factory<_i15.ChatBotBloc>(
      () => _i15.ChatBotBloc(gh<_i11.IChatBotFacade>()));
  return getIt;
}

class _$RegisterModule extends _i16.RegisterModule {}
