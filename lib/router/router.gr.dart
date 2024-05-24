// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/cupertino.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:logindemo/authflow/auth_flow.dart' as _i3;
import 'package:logindemo/pages/view/mobile/adminhomepage.dart' as _i1;
import 'package:logindemo/pages/view/mobile/adminloginpage.dart' as _i2;
import 'package:logindemo/pages/view/mobile/authpage.dart' as _i4;
import 'package:logindemo/pages/view/mobile/forgetpasswordpage.dart' as _i6;
import 'package:logindemo/pages/view/mobile/homepage.dart' as _i7;
import 'package:logindemo/pages/view/mobile/loadingpage.dart' as _i8;
import 'package:logindemo/pages/view/mobile/loginpage.dart' as _i9;
import 'package:logindemo/pages/view/mobile/registerpage.dart' as _i5;
import 'package:logindemo/pages/view/mobile/userhomepage.dart' as _i10;
import 'package:logindemo/pages/view/web/authpage.dart' as _i11;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AdminhomePage.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AdminhomePage(),
      );
    },
    AdminloginPage.name: (routeData) {
      final args = routeData.argsAs<AdminloginPageArgs>(
          orElse: () => const AdminloginPageArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AdminloginPage(key: args.key),
      );
    },
    AuthFlowPage.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthFlowPage(),
      );
    },
    AuthPage.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AuthPage(),
      );
    },
    CreateAccountPage.name: (routeData) {
      final args = routeData.argsAs<CreateAccountPageArgs>(
          orElse: () => const CreateAccountPageArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.CreateAccountPage(key: args.key),
      );
    },
    ForgetPasswordPage.name: (routeData) {
      final args = routeData.argsAs<ForgetPasswordPageArgs>(
          orElse: () => const ForgetPasswordPageArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.ForgetPasswordPage(key: args.key),
      );
    },
    HomePage.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomePage(),
      );
    },
    LoadingPage.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoadingPage(),
      );
    },
    LoginPage.name: (routeData) {
      final args =
          routeData.argsAs<LoginPageArgs>(orElse: () => const LoginPageArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.LoginPage(key: args.key),
      );
    },
    UserhomePage.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.UserhomePage(),
      );
    },
    WebViewAuthPage.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.WebViewAuthPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AdminhomePage]
class AdminhomePage extends _i12.PageRouteInfo<void> {
  const AdminhomePage({List<_i12.PageRouteInfo>? children})
      : super(
          AdminhomePage.name,
          initialChildren: children,
        );

  static const String name = 'AdminhomePage';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AdminloginPage]
class AdminloginPage extends _i12.PageRouteInfo<AdminloginPageArgs> {
  AdminloginPage({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          AdminloginPage.name,
          args: AdminloginPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AdminloginPage';

  static const _i12.PageInfo<AdminloginPageArgs> page =
      _i12.PageInfo<AdminloginPageArgs>(name);
}

class AdminloginPageArgs {
  const AdminloginPageArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'AdminloginPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.AuthFlowPage]
class AuthFlowPage extends _i12.PageRouteInfo<void> {
  const AuthFlowPage({List<_i12.PageRouteInfo>? children})
      : super(
          AuthFlowPage.name,
          initialChildren: children,
        );

  static const String name = 'AuthFlowPage';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AuthPage]
class AuthPage extends _i12.PageRouteInfo<void> {
  const AuthPage({List<_i12.PageRouteInfo>? children})
      : super(
          AuthPage.name,
          initialChildren: children,
        );

  static const String name = 'AuthPage';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CreateAccountPage]
class CreateAccountPage extends _i12.PageRouteInfo<CreateAccountPageArgs> {
  CreateAccountPage({
    _i14.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          CreateAccountPage.name,
          args: CreateAccountPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CreateAccountPage';

  static const _i12.PageInfo<CreateAccountPageArgs> page =
      _i12.PageInfo<CreateAccountPageArgs>(name);
}

class CreateAccountPageArgs {
  const CreateAccountPageArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'CreateAccountPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.ForgetPasswordPage]
class ForgetPasswordPage extends _i12.PageRouteInfo<ForgetPasswordPageArgs> {
  ForgetPasswordPage({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          ForgetPasswordPage.name,
          args: ForgetPasswordPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordPage';

  static const _i12.PageInfo<ForgetPasswordPageArgs> page =
      _i12.PageInfo<ForgetPasswordPageArgs>(name);
}

class ForgetPasswordPageArgs {
  const ForgetPasswordPageArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'ForgetPasswordPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.HomePage]
class HomePage extends _i12.PageRouteInfo<void> {
  const HomePage({List<_i12.PageRouteInfo>? children})
      : super(
          HomePage.name,
          initialChildren: children,
        );

  static const String name = 'HomePage';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoadingPage]
class LoadingPage extends _i12.PageRouteInfo<void> {
  const LoadingPage({List<_i12.PageRouteInfo>? children})
      : super(
          LoadingPage.name,
          initialChildren: children,
        );

  static const String name = 'LoadingPage';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LoginPage]
class LoginPage extends _i12.PageRouteInfo<LoginPageArgs> {
  LoginPage({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          LoginPage.name,
          args: LoginPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginPage';

  static const _i12.PageInfo<LoginPageArgs> page =
      _i12.PageInfo<LoginPageArgs>(name);
}

class LoginPageArgs {
  const LoginPageArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'LoginPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.UserhomePage]
class UserhomePage extends _i12.PageRouteInfo<void> {
  const UserhomePage({List<_i12.PageRouteInfo>? children})
      : super(
          UserhomePage.name,
          initialChildren: children,
        );

  static const String name = 'UserhomePage';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.WebViewAuthPage]
class WebViewAuthPage extends _i12.PageRouteInfo<void> {
  const WebViewAuthPage({List<_i12.PageRouteInfo>? children})
      : super(
          WebViewAuthPage.name,
          initialChildren: children,
        );

  static const String name = 'WebViewAuthPage';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
