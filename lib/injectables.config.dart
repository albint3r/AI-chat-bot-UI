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
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import 'aplication/auth/auth_bloc.dart' as _i25;
import 'aplication/chatbot/chatbot_bloc.dart' as _i26;
import 'aplication/login/login_form_bloc.dart' as _i10;
import 'aplication/signin/signup_bloc.dart' as _i13;
import 'domain/auth/i_auth_data_source.dart' as _i17;
import 'domain/auth/i_auth_facade.dart' as _i19;
import 'domain/chatbot/i_chatbot_data_source.dart' as _i21;
import 'domain/chatbot/i_chatbot_facade.dart' as _i23;
import 'domain/login/i_login_form_facade.dart' as _i6;
import 'domain/signup/i_signup_facade.dart' as _i8;
import 'infrastructure/auth/auth_facade_data_source_impl.dart' as _i18;
import 'infrastructure/auth/auth_facade_impl.dart' as _i20;
import 'infrastructure/auth/auth_interceptors.dart' as _i16;
import 'infrastructure/chatbot/chatbot_data_source_impl.dart' as _i22;
import 'infrastructure/chatbot/chatbot_facade_impl.dart' as _i24;
import 'infrastructure/core/app_bloc_observer.dart' as _i3;
import 'infrastructure/core/register_module.dart' as _i28;
import 'infrastructure/core/shared_pref.dart' as _i15;
import 'infrastructure/login/login_form_facade.dart' as _i7;
import 'infrastructure/signup/signup_facade_impl.dart' as _i9;
import 'presentation/core/router/app_router.dart' as _i27;
import 'presentation/core/router/router_observer.dart' as _i11;
import 'presentation/core/theme/theme_config.dart' as _i14;

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
  gh.factory<_i8.ISignUpFacade>(() => _i9.SignupFacadeImpl());
  gh.factory<Iterable<_i5.Interceptor>>(() => registerModule.getInterceptors());
  gh.factory<_i10.LoginFormBloc>(
      () => _i10.LoginFormBloc(gh<_i6.ILoginFormFacade>()));
  gh.singleton<_i11.RouterObserver>(_i11.RouterObserver());
  await gh.factoryAsync<_i12.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.factory<_i13.SignupBloc>(() => _i13.SignupBloc(gh<_i8.ISignUpFacade>()));
  gh.singleton<_i14.ThemeConfig>(_i14.ThemeConfig());
  gh.singleton<Uri>(registerModule.getUriWebSocket());
  gh.lazySingleton<_i15.SharedPref>(
      () => _i15.SharedPref(gh<_i12.SharedPreferences>()));
  gh.factory<_i16.AuthInterceptors>(
      () => _i16.AuthInterceptors(gh<_i15.SharedPref>()));
  gh.singleton<_i5.Dio>(registerModule.getDio(
    gh<_i5.BaseOptions>(),
    gh<Iterable<_i5.Interceptor>>(),
    gh<_i16.AuthInterceptors>(),
  ));
  gh.factory<_i17.IAuthDataSource>(
      () => _i18.AuthFacadeDataSourceImpl(gh<_i5.Dio>()));
  gh.factory<_i19.IAuthFacade>(() => _i20.AuthFacadeImpl(
        gh<_i15.SharedPref>(),
        gh<_i17.IAuthDataSource>(),
      ));
  gh.factory<_i21.IChatBotDataSource>(() => _i22.ChatBotDataSourceImpl(
        gh<_i5.Dio>(),
        gh<Uri>(),
      ));
  gh.factory<_i23.IChatBotFacade>(
      () => _i24.ChatBotFacadeImpl(gh<_i21.IChatBotDataSource>()));
  gh.lazySingleton<_i25.AuthBloc>(() => _i25.AuthBloc(gh<_i19.IAuthFacade>()));
  gh.factory<_i26.ChatBotBloc>(
      () => _i26.ChatBotBloc(gh<_i23.IChatBotFacade>()));
  gh.singleton<_i27.AppRouter>(_i27.AppRouter(gh<_i25.AuthBloc>()));
  return getIt;
}

class _$RegisterModule extends _i28.RegisterModule {}
