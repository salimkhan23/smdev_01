part of 'route_page.dart';

abstract class Routes {
  Routes._();
  static const mainApp = _Path.mainApp;
  static const splashScreen = _Path.splashScreen;
  static const homeScreen = _Path.homeScreen;
  static const userInput = _Path.userInput;
}

abstract class _Path {
  _Path._();
  static const mainApp = '/main-app';
  static const splashScreen = '/splash-screen';
  static const userInput = '/user-input';
  static const homeScreen = '/home-screen';
}
