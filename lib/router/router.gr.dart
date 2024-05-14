// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/cupertino.dart' as _i8;
import 'package:flutter/material.dart' as _i7;
import 'package:logindemo/authflow/auth_flow.dart' as _i1;
import 'package:logindemo/pages/dashboard.dart' as _i4;
import 'package:logindemo/pages/forgetpasswordpage.dart' as _i3;
import 'package:logindemo/pages/loginpage.dart' as _i5;
import 'package:logindemo/pages/registerpage.dart' as _i2;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AuthFlowPage.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthFlowPage(),
      );
    },
    CreateAccountPage.name: (routeData) {
      final args = routeData.argsAs<CreateAccountPageArgs>(
          orElse: () => const CreateAccountPageArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.CreateAccountPage(key: args.key),
      );
    },
    ForgetPasswordPage.name: (routeData) {
      final args = routeData.argsAs<ForgetPasswordPageArgs>(
          orElse: () => const ForgetPasswordPageArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.ForgetPasswordPage(key: args.key),
      );
    },
    HomePage.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    LoginPage.name: (routeData) {
      final args =
          routeData.argsAs<LoginPageArgs>(orElse: () => const LoginPageArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.LoginPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthFlowPage]
class AuthFlowPage extends _i6.PageRouteInfo<void> {
  const AuthFlowPage({List<_i6.PageRouteInfo>? children})
      : super(
          AuthFlowPage.name,
          initialChildren: children,
        );

  static const String name = 'AuthFlowPage';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CreateAccountPage]
class CreateAccountPage extends _i6.PageRouteInfo<CreateAccountPageArgs> {
  CreateAccountPage({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          CreateAccountPage.name,
          args: CreateAccountPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CreateAccountPage';

  static const _i6.PageInfo<CreateAccountPageArgs> page =
      _i6.PageInfo<CreateAccountPageArgs>(name);
}

class CreateAccountPageArgs {
  const CreateAccountPageArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'CreateAccountPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.ForgetPasswordPage]
class ForgetPasswordPage extends _i6.PageRouteInfo<ForgetPasswordPageArgs> {
  ForgetPasswordPage({
    _i8.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          ForgetPasswordPage.name,
          args: ForgetPasswordPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordPage';

  static const _i6.PageInfo<ForgetPasswordPageArgs> page =
      _i6.PageInfo<ForgetPasswordPageArgs>(name);
}

class ForgetPasswordPageArgs {
  const ForgetPasswordPageArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'ForgetPasswordPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.HomePage]
class HomePage extends _i6.PageRouteInfo<void> {
  const HomePage({List<_i6.PageRouteInfo>? children})
      : super(
          HomePage.name,
          initialChildren: children,
        );

  static const String name = 'HomePage';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginPage extends _i6.PageRouteInfo<LoginPageArgs> {
  LoginPage({
    _i8.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          LoginPage.name,
          args: LoginPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginPage';

  static const _i6.PageInfo<LoginPageArgs> page =
      _i6.PageInfo<LoginPageArgs>(name);
}

class LoginPageArgs {
  const LoginPageArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'LoginPageArgs{key: $key}';
  }
}
