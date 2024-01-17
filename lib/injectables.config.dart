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

import 'aplication/auth/auth_bloc.dart' as _i19;
import 'aplication/chatbot/chatbot_bloc.dart' as _i20;
import 'domain/auth/i_auth_data_source.dart' as _i11;
import 'domain/auth/i_auth_facade.dart' as _i13;
import 'domain/chatbot/i_chatbot_data_source.dart' as _i15;
import 'domain/chatbot/i_chatbot_facade.dart' as _i17;
import 'infrastructure/auth/auth_facade_data_source_impl.dart' as _i12;
import 'infrastructure/auth/auth_facade_impl.dart' as _i14;
import 'infrastructure/auth/auth_interceptors.dart' as _i10;
import 'infrastructure/chatbot/chatbot_data_source_impl.dart' as _i16;
import 'infrastructure/chatbot/chatbot_facade_impl.dart' as _i18;
import 'infrastructure/core/app_bloc_observer.dart' as _i3;
import 'infrastructure/core/register_module.dart' as _i21;
import 'infrastructure/core/shared_pref.dart' as _i9;
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
  gh.factory<Iterable<_i6.Interceptor>>(() => registerModule.getInterceptors());
  await gh.factoryAsync<_i7.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i8.ThemeConfig>(_i8.ThemeConfig());
  gh.singleton<Uri>(registerModule.getUriWebSocket());
  gh.lazySingleton<_i9.SharedPref>(
      () => _i9.SharedPref(gh<_i7.SharedPreferences>()));
  gh.factory<_i10.AuthInterceptors>(
      () => _i10.AuthInterceptors(gh<_i9.SharedPref>()));
  gh.factory<_i6.BaseOptions>(
      () => registerModule.getDioBaseOptions(gh<_i9.SharedPref>()));
  gh.singleton<_i6.Dio>(registerModule.getDio(
    gh<_i6.BaseOptions>(),
    gh<Iterable<_i6.Interceptor>>(),
    gh<_i10.AuthInterceptors>(),
  ));
  gh.factory<_i11.IAuthDataSource>(
      () => _i12.AuthFacadeDataSourceImpl(gh<_i6.Dio>()));
  gh.factory<_i13.IAuthFacade>(() => _i14.AuthFacadeImpl(
        gh<_i9.SharedPref>(),
        gh<_i11.IAuthDataSource>(),
      ));
  gh.factory<_i15.IChatBotDataSource>(() => _i16.ChatBotDataSourceImpl(
        gh<_i6.Dio>(),
        gh<Uri>(),
      ));
  gh.factory<_i17.IChatBotFacade>(
      () => _i18.ChatBotFacadeImpl(gh<_i15.IChatBotDataSource>()));
  gh.factory<_i19.AuthBloc>(() => _i19.AuthBloc(gh<_i13.IAuthFacade>()));
  gh.factory<_i20.ChatBotBloc>(
      () => _i20.ChatBotBloc(gh<_i17.IChatBotFacade>()));
  return getIt;
}

class _$RegisterModule extends _i21.RegisterModule {}
