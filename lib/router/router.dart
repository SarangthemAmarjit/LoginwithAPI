import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        //HomeScreen is generated as HomeRoute because
        //of the replaceInRouteName property
        AutoRoute(path: '/', page: AuthFlowPage.page, children: [
          AutoRoute(
            path: 'loginpage',
            page: LoginPage.page,
          ),
          AutoRoute(path: 'homepage', page: HomePage.page),
          AutoRoute(path: 'loadingpage', page: LoadingPage.page),
        ]),

        AutoRoute(path: '/registerpage', page: CreateAccountPage.page),

        AutoRoute(path: '/forgetpassword', page: ForgetPasswordPage.page),
      ];
}
