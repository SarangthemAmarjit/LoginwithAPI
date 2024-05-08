// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:logindemo/pages/dashboard.dart' as _i2;
import 'package:logindemo/pages/loginpage.dart' as _i3;
import 'package:logindemo/pages/registerpage.dart' as _i1;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    CreateAccountPage.name: (routeData) {
      final args = routeData.argsAs<CreateAccountPageArgs>(
          orElse: () => const CreateAccountPageArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CreateAccountPage(key: args.key),
      );
    },
    HomePage.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    LoginPage.name: (routeData) {
      final args =
          routeData.argsAs<LoginPageArgs>(orElse: () => const LoginPageArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.LoginPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.CreateAccountPage]
class CreateAccountPage extends _i4.PageRouteInfo<CreateAccountPageArgs> {
  CreateAccountPage({
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          CreateAccountPage.name,
          args: CreateAccountPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CreateAccountPage';

  static const _i4.PageInfo<CreateAccountPageArgs> page =
      _i4.PageInfo<CreateAccountPageArgs>(name);
}

class CreateAccountPageArgs {
  const CreateAccountPageArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'CreateAccountPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomePage extends _i4.PageRouteInfo<void> {
  const HomePage({List<_i4.PageRouteInfo>? children})
      : super(
          HomePage.name,
          initialChildren: children,
        );

  static const String name = 'HomePage';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginPage extends _i4.PageRouteInfo<LoginPageArgs> {
  LoginPage({
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          LoginPage.name,
          args: LoginPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginPage';

  static const _i4.PageInfo<LoginPageArgs> page =
      _i4.PageInfo<LoginPageArgs>(name);
}

class LoginPageArgs {
  const LoginPageArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'LoginPageArgs{key: $key}';
  }
}
