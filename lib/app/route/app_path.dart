abstract class Routes{
  Routes._();
  static const INITIAL = _paths.INITIAL;
  static const SPLASH_SCREEN = _paths.SPLASH_SCREEN;
  static const ONBOARDING_SCREEN = _paths.ONBOARDING_SCREEN;
  static const HOME_SCREEN = _paths.HOME_SCREEN;
  static const LOGIN_SCREEN = _paths.LOGIN_SCREEN;
  static const REG_SCREEN = _paths.REG_SCREEN;
}


abstract class _paths{
  _paths._();
  static const INITIAL ='/';
  static const SPLASH_SCREEN= '/splash_screen';
  static const ONBOARDING_SCREEN='/onboarding_screen';
  static const HOME_SCREEN='/home_screen';
  static const LOGIN_SCREEN ='/login_screen';
  static const REG_SCREEN='/reg_screen';
}