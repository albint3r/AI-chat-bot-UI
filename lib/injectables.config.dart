// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:flutter/material.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import 'aplication/auth/auth_bloc.dart' as _i22;
import 'aplication/chatbot/chatbot_bloc.dart' as _i23;
import 'aplication/login/login_form_bloc.dart' as _i8;
import 'domain/auth/i_auth_data_source.dart' as _i14;
import 'domain/auth/i_auth_facade.dart' as _i16;
import 'domain/chatbot/i_chatbot_data_source.dart' as _i18;
import 'domain/chatbot/i_chatbot_facade.dart' as _i20;
import 'domain/login/i_login_form_facade.dart' as _i6;
import 'infrastructure/auth/auth_facade_data_source_impl.dart' as _i15;
import 'infrastructure/auth/auth_facade_impl.dart' as _i17;
import 'infrastructure/auth/auth_interceptors.dart' as _i13;
import 'infrastructure/chatbot/chatbot_data_source_impl.dart' as _i19;
import 'infrastructure/chatbot/chatbot_facade_impl.dart' as _i21;
import 'infrastructure/core/app_bloc_observer.dart' as _i3;
import 'infrastructure/core/register_module.dart' as _i25;
import 'infrastructure/core/shared_pref.dart' as _i12;
import 'infrastructure/login/login_form_facade.dart' as _i7;
import 'presentation/core/router/app_router.dart' as _i24;
import 'presentation/core/router/router_observer.dart' as _i9;
import 'presentation/core/theme/theme_config.dart' as _i11;

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
  gh.factory<_i5.BaseOptions>(() => registerModule.getDioBaseOptions());
  gh.factory<_i6.ILoginFormFacade>(() => _i7.LoginFormFacade());
  gh.factory<Iterable<_i5.Interceptor>>(() => registerModule.getInterceptors());
  gh.factory<_i8.LoginFormBloc>(
      () => _i8.LoginFormBloc(gh<_i6.ILoginFormFacade>()));
  gh.singleton<_i9.RouterObserver>(_i9.RouterObserver());
  await gh.factoryAsync<_i10.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i11.ThemeConfig>(_i11.ThemeConfig());
  gh.singleton<Uri>(registerModule.getUriWebSocket());
  gh.lazySingleton<_i12.SharedPref>(
      () => _i12.SharedPref(gh<_i10.SharedPreferences>()));
  gh.factory<_i13.AuthInterceptors>(
      () => _i13.AuthInterceptors(gh<_i12.SharedPref>()));
  gh.singleton<_i5.Dio>(registerModule.getDio(
    gh<_i5.BaseOptions>(),
    gh<Iterable<_i5.Interceptor>>(),
    gh<_i13.AuthInterceptors>(),
  ));
  gh.factory<_i14.IAuthDataSource>(
      () => _i15.AuthFacadeDataSourceImpl(gh<_i5.Dio>()));
  gh.factory<_i16.IAuthFacade>(() => _i17.AuthFacadeImpl(
        gh<_i12.SharedPref>(),
        gh<_i14.IAuthDataSource>(),
      ));
  gh.factory<_i18.IChatBotDataSource>(() => _i19.ChatBotDataSourceImpl(
        gh<_i5.Dio>(),
        gh<Uri>(),
      ));
  gh.factory<_i20.IChatBotFacade>(
      () => _i21.ChatBotFacadeImpl(gh<_i18.IChatBotDataSource>()));
  gh.factory<_i22.AuthBloc>(() => _i22.AuthBloc(gh<_i16.IAuthFacade>()));
  gh.factory<_i23.ChatBotBloc>(
      () => _i23.ChatBotBloc(gh<_i20.IChatBotFacade>()));
  gh.singleton<_i24.AppRouter>(_i24.AppRouter(gh<_i22.AuthBloc>()));
  return getIt;
}

class _$RegisterModule extends _i25.RegisterModule {}
