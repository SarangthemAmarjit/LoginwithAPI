// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/cupertino.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:logindemo/authflow/auth_flow.dart' as _i2;
import 'package:logindemo/pages/adminpage.dart' as _i1;
import 'package:logindemo/pages/dashboard.dart' as _i5;
import 'package:logindemo/pages/forgetpasswordpage.dart' as _i4;
import 'package:logindemo/pages/loadingpage.dart' as _i6;
import 'package:logindemo/pages/loginpage.dart' as _i7;
import 'package:logindemo/pages/registerpage.dart' as _i3;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AdminPage.name: (routeData) {
      final args =
          routeData.argsAs<AdminPageArgs>(orElse: () => const AdminPageArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AdminPage(key: args.key),
      );
    },
    AuthFlowPage.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthFlowPage(),
      );
    },
    CreateAccountPage.name: (routeData) {
      final args = routeData.argsAs<CreateAccountPageArgs>(
          orElse: () => const CreateAccountPageArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CreateAccountPage(key: args.key),
      );
    },
    ForgetPasswordPage.name: (routeData) {
      final args = routeData.argsAs<ForgetPasswordPageArgs>(
          orElse: () => const ForgetPasswordPageArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ForgetPasswordPage(key: args.key),
      );
    },
    HomePage.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    LoadingPage.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoadingPage(),
      );
    },
    LoginPage.name: (routeData) {
      final args =
          routeData.argsAs<LoginPageArgs>(orElse: () => const LoginPageArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.LoginPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.AdminPage]
class AdminPage extends _i8.PageRouteInfo<AdminPageArgs> {
  AdminPage({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          AdminPage.name,
          args: AdminPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AdminPage';

  static const _i8.PageInfo<AdminPageArgs> page =
      _i8.PageInfo<AdminPageArgs>(name);
}

class AdminPageArgs {
  const AdminPageArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'AdminPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.AuthFlowPage]
class AuthFlowPage extends _i8.PageRouteInfo<void> {
  const AuthFlowPage({List<_i8.PageRouteInfo>? children})
      : super(
          AuthFlowPage.name,
          initialChildren: children,
        );

  static const String name = 'AuthFlowPage';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CreateAccountPage]
class CreateAccountPage extends _i8.PageRouteInfo<CreateAccountPageArgs> {
  CreateAccountPage({
    _i10.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          CreateAccountPage.name,
          args: CreateAccountPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CreateAccountPage';

  static const _i8.PageInfo<CreateAccountPageArgs> page =
      _i8.PageInfo<CreateAccountPageArgs>(name);
}

class CreateAccountPageArgs {
  const CreateAccountPageArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'CreateAccountPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.ForgetPasswordPage]
class ForgetPasswordPage extends _i8.PageRouteInfo<ForgetPasswordPageArgs> {
  ForgetPasswordPage({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          ForgetPasswordPage.name,
          args: ForgetPasswordPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordPage';

  static const _i8.PageInfo<ForgetPasswordPageArgs> page =
      _i8.PageInfo<ForgetPasswordPageArgs>(name);
}

class ForgetPasswordPageArgs {
  const ForgetPasswordPageArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'ForgetPasswordPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.HomePage]
class HomePage extends _i8.PageRouteInfo<void> {
  const HomePage({List<_i8.PageRouteInfo>? children})
      : super(
          HomePage.name,
          initialChildren: children,
        );

  static const String name = 'HomePage';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoadingPage]
class LoadingPage extends _i8.PageRouteInfo<void> {
  const LoadingPage({List<_i8.PageRouteInfo>? children})
      : super(
          LoadingPage.name,
          initialChildren: children,
        );

  static const String name = 'LoadingPage';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.LoginPage]
class LoginPage extends _i8.PageRouteInfo<LoginPageArgs> {
  LoginPage({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          LoginPage.name,
          args: LoginPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginPage';

  static const _i8.PageInfo<LoginPageArgs> page =
      _i8.PageInfo<LoginPageArgs>(name);
}

class LoginPageArgs {
  const LoginPageArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'LoginPageArgs{key: $key}';
  }
}
