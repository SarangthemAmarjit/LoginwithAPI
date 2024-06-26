// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/cupertino.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:logindemo/authflow/auth_flow.dart' as _i3;
import 'package:logindemo/pages/view/mobile/adminhomepage.dart' as _i1;
import 'package:logindemo/pages/view/mobile/adminloginpage.dart' as _i2;
import 'package:logindemo/pages/view/mobile/authpage.dart' as _i4;
import 'package:logindemo/pages/view/mobile/forgetpasswordpage.dart' as _i6;
import 'package:logindemo/pages/view/mobile/homepage.dart' as _i7;
import 'package:logindemo/pages/view/mobile/loadingpage.dart' as _i8;
import 'package:logindemo/pages/view/mobile/loginpage.dart' as _i9;
import 'package:logindemo/pages/view/mobile/profileupdatepage.dart' as _i10;
import 'package:logindemo/pages/view/mobile/registerpage.dart' as _i5;
import 'package:logindemo/pages/view/mobile/userhomepage.dart' as _i11;
import 'package:logindemo/pages/view/web/adminloginpage.dart' as _i12;
import 'package:logindemo/pages/view/web/authpage.dart' as _i13;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    AdminhomePage.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AdminhomePage(),
      );
    },
    AdminloginPage.name: (routeData) {
      final args = routeData.argsAs<AdminloginPageArgs>(
          orElse: () => const AdminloginPageArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AdminloginPage(key: args.key),
      );
    },
    AuthFlowPage.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AuthFlowPage(),
      );
    },
    AuthPage.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AuthPage(),
      );
    },
    CreateAccountPage.name: (routeData) {
      final args = routeData.argsAs<CreateAccountPageArgs>(
          orElse: () => const CreateAccountPageArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.CreateAccountPage(key: args.key),
      );
    },
    ForgetPasswordPage.name: (routeData) {
      final args = routeData.argsAs<ForgetPasswordPageArgs>(
          orElse: () => const ForgetPasswordPageArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.ForgetPasswordPage(key: args.key),
      );
    },
    HomePage.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomePage(),
      );
    },
    LoadingPage.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoadingPage(),
      );
    },
    LoginPage.name: (routeData) {
      final args =
          routeData.argsAs<LoginPageArgs>(orElse: () => const LoginPageArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.LoginPage(key: args.key),
      );
    },
    ProfileRoutePage.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ProfileScreenPage(),
      );
    },
    UserhomePage.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.UserhomePage(),
      );
    },
    WebViewAdminloginPage.name: (routeData) {
      final args = routeData.argsAs<WebViewAdminloginPageArgs>(
          orElse: () => const WebViewAdminloginPageArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.WebViewAdminloginPage(key: args.key),
      );
    },
    WebViewAuthPage.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.WebViewAuthPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AdminhomePage]
class AdminhomePage extends _i14.PageRouteInfo<void> {
  const AdminhomePage({List<_i14.PageRouteInfo>? children})
      : super(
          AdminhomePage.name,
          initialChildren: children,
        );

  static const String name = 'AdminhomePage';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AdminloginPage]
class AdminloginPage extends _i14.PageRouteInfo<AdminloginPageArgs> {
  AdminloginPage({
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          AdminloginPage.name,
          args: AdminloginPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AdminloginPage';

  static const _i14.PageInfo<AdminloginPageArgs> page =
      _i14.PageInfo<AdminloginPageArgs>(name);
}

class AdminloginPageArgs {
  const AdminloginPageArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'AdminloginPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.AuthFlowPage]
class AuthFlowPage extends _i14.PageRouteInfo<void> {
  const AuthFlowPage({List<_i14.PageRouteInfo>? children})
      : super(
          AuthFlowPage.name,
          initialChildren: children,
        );

  static const String name = 'AuthFlowPage';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AuthPage]
class AuthPage extends _i14.PageRouteInfo<void> {
  const AuthPage({List<_i14.PageRouteInfo>? children})
      : super(
          AuthPage.name,
          initialChildren: children,
        );

  static const String name = 'AuthPage';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CreateAccountPage]
class CreateAccountPage extends _i14.PageRouteInfo<CreateAccountPageArgs> {
  CreateAccountPage({
    _i16.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          CreateAccountPage.name,
          args: CreateAccountPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CreateAccountPage';

  static const _i14.PageInfo<CreateAccountPageArgs> page =
      _i14.PageInfo<CreateAccountPageArgs>(name);
}

class CreateAccountPageArgs {
  const CreateAccountPageArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'CreateAccountPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.ForgetPasswordPage]
class ForgetPasswordPage extends _i14.PageRouteInfo<ForgetPasswordPageArgs> {
  ForgetPasswordPage({
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ForgetPasswordPage.name,
          args: ForgetPasswordPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordPage';

  static const _i14.PageInfo<ForgetPasswordPageArgs> page =
      _i14.PageInfo<ForgetPasswordPageArgs>(name);
}

class ForgetPasswordPageArgs {
  const ForgetPasswordPageArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'ForgetPasswordPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.HomePage]
class HomePage extends _i14.PageRouteInfo<void> {
  const HomePage({List<_i14.PageRouteInfo>? children})
      : super(
          HomePage.name,
          initialChildren: children,
        );

  static const String name = 'HomePage';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoadingPage]
class LoadingPage extends _i14.PageRouteInfo<void> {
  const LoadingPage({List<_i14.PageRouteInfo>? children})
      : super(
          LoadingPage.name,
          initialChildren: children,
        );

  static const String name = 'LoadingPage';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LoginPage]
class LoginPage extends _i14.PageRouteInfo<LoginPageArgs> {
  LoginPage({
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          LoginPage.name,
          args: LoginPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginPage';

  static const _i14.PageInfo<LoginPageArgs> page =
      _i14.PageInfo<LoginPageArgs>(name);
}

class LoginPageArgs {
  const LoginPageArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'LoginPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.ProfileScreenPage]
class ProfileRoutePage extends _i14.PageRouteInfo<void> {
  const ProfileRoutePage({List<_i14.PageRouteInfo>? children})
      : super(
          ProfileRoutePage.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoutePage';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i11.UserhomePage]
class UserhomePage extends _i14.PageRouteInfo<void> {
  const UserhomePage({List<_i14.PageRouteInfo>? children})
      : super(
          UserhomePage.name,
          initialChildren: children,
        );

  static const String name = 'UserhomePage';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i12.WebViewAdminloginPage]
class WebViewAdminloginPage
    extends _i14.PageRouteInfo<WebViewAdminloginPageArgs> {
  WebViewAdminloginPage({
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          WebViewAdminloginPage.name,
          args: WebViewAdminloginPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'WebViewAdminloginPage';

  static const _i14.PageInfo<WebViewAdminloginPageArgs> page =
      _i14.PageInfo<WebViewAdminloginPageArgs>(name);
}

class WebViewAdminloginPageArgs {
  const WebViewAdminloginPageArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'WebViewAdminloginPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.WebViewAuthPage]
class WebViewAuthPage extends _i14.PageRouteInfo<void> {
  const WebViewAuthPage({List<_i14.PageRouteInfo>? children})
      : super(
          WebViewAuthPage.name,
          initialChildren: children,
        );

  static const String name = 'WebViewAuthPage';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
