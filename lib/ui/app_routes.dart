import 'package:flutter/material.dart';
import 'package:untitled2/ui/auth/lets_in/lets_in_screen.dart';
import 'package:untitled2/ui/auth/login/login_screen.dart';
import 'package:untitled2/ui/auth/register/register_screen.dart';
import 'package:untitled2/ui/bottom_nav_bar.dart';
import 'package:untitled2/ui/splash/splash_screen.dart';

class RouteNames {
  static const String splashScreen = "/";
  static const String conFirmCodeScreen = "/confirm_code_screen";
  static const String appRoute = "/app_route";
  static const String forgotPassword = "/forgot_password";
  static const String createPassword = "/create_password";
  static const String letsIn = "/lets_in_screen";
  static const String signUp = "/sign_up_screen";
  static const String login = "/login_screen";
  static const String tabBox = "/tab_box";

  // static const String setPinCodeScreen = "/set_pin_code_screen";
  // static const String enterPinScreen = "/pin_code_screen";
  // static const String setBiometrics = "/set_biometrics";
  // static const String code = "/code";
  static const String searchLocationScreen = "/search_location";
  static const String notificationScreen = "/notification_screen";
  static const String specialOffers = "/special_offers";
  static const String paymentMethods = "/payment_methods";
  static const String searchingDriver = "/searching_driver";
  static const String driverArriving = "/driver_arriving";
  static const String selectTransportScreen = "/select_driver_screen";
  static const String addPromo = "/add_promo";
  static const String cancelDriver = "/cancel_driver";
  static const String chatWithDriver = "/chat_with_driver";
  static const String driverDetail = "/driver_detail";
  static const String notificationSwitch = "/notification_switch";
  static const String topUpAmountScreen = "/top_up_amount_screen";
  static const String addressScreen = "/address";
  static const String topUpPaymentScreen = "/top_up_payment_screen";
  static const String transactionsHistory = "/transaction_histories";
  static const String transactionsDetail = "/transaction_detail";
  static const String languageScreen = "/language_screen";
  static const String security = "/security";
  static const String privacyPolicy = "/privacy_policy";
  static const String payment = "/payment_screen";
  static const String paymentAddCard = "/payment_add_card_screen";
  static const String editProfileDriver = "/edit_profile";
  static const String editProfileClient = "/edit_profile_client";
  static const String inviteFriends = "/invite_friends";
  static const String helpCenterScreen = "/helpCenterScreen";
  static const String notificationDetail = "/notificationDetail";
  static const String addAddressScreen = "/add_address_screen";
  static const String requestScreen = "/request_screen";
  static const String driverDetailInfo = '/driver_detail_screen';
  static const String clientDetailInfo = '/client_detail_screen';
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case RouteNames.signUp:
        return MaterialPageRoute(builder: (context) => const RegisterScreen());
      case RouteNames.letsIn:
        return MaterialPageRoute(
          builder: (context) => const LetsInScreen(),
        );
      case RouteNames.tabBox:
        return MaterialPageRoute(
          builder: (context) => const BottomNavBar(),
        );
      case RouteNames.splashScreen:
        return MaterialPageRoute(
          builder: (context) =>  const SplashScreen(),
        );
      // case RouteNames.requestScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const RequestScreen(),
      //   );
      // case RouteNames.helpCenterScreen:
      //   return MaterialPageRoute(
      //     builder: (context) =>  HelpCenterScreen(),
      //   );
      // case RouteNames.editProfileDriver:
      //   return MaterialPageRoute(
      //     builder: (context) => EditProfileScreen(
      //       navigateFromAuth: settings.arguments as bool,
      //     ),
      //   );
      // case RouteNames.specialOffers:
      //   return MaterialPageRoute(
      //     builder: (context) => const SpecialOffersScreen(),
      //   );
      // case RouteNames.appRoute:
      //   return MaterialPageRoute(
      //     builder: (context) => const App(),
      //   );
      // case RouteNames.inviteFriends:
      //   return MaterialPageRoute(
      //     builder: (context) => const InviteFriendsScreen(),
      //   );
      // case RouteNames.security:
      //   return MaterialPageRoute(
      //     builder: (context) => const SecurityScreen(),
      //   );
      // case RouteNames.languageScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const LanguageScreen(),
      //   );

      // case RouteNames.cancelDriver:
      //   return MaterialPageRoute(
      //     builder: (context) => const CancelDriverScreen(),
      //   );
      // case RouteNames.privacyPolicy:
      //   return MaterialPageRoute(
      //     builder: (context) => const PrivacyPolicyScreen(),
      //   );

      // // case RouteNames.setPinCodeScreen:
      // //   return MaterialPageRoute(
      // //     builder: (context) => SetPinScreen(
      // //       previousPin: settings.arguments as String?,
      // //     ),
      // //   );
      // // case RouteNames.enterPinScreen:
      // //   return MaterialPageRoute(
      // //     builder: (context) => EnterPinScreen(isFromSecurity: settings.arguments as bool?),
      // //   );
      // case RouteNames.driverDetail:
      //   return MaterialPageRoute(
      //     builder: (context) => const DriverDetailScreen(),
      //   );
      //
      // case RouteNames.topUpAmountScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const TopUpAmountScreen(),
      //   );
      //
      // case RouteNames.addAddressScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => AddressAddDetailScreen(
      //       addressModel: settings.arguments as AddressModel?,
      //     ),
      //   );
      // // case RouteNames.setBiometrics:
      // //   return MaterialPageRoute(builder: (context) => const SetBiometricsScreen());
      // case RouteNames.conFirmCodeScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const ConfirmCodeScreen(),
      //   );
      // case RouteNames.forgotPassword:
      //   return MaterialPageRoute(
      //     builder: (context) => const ForgotPassWord(),
      //   );
      // case RouteNames.createPassword:
      //   return MaterialPageRoute(
      //     builder: (context) => const CreatePasswordScreen(),
      //   );
      // case RouteNames.searchLocationScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const SearchLocationScreen(),
      //   );
      // case RouteNames.notificationScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const NotificationScreen(),
      //   );
      // case RouteNames.paymentMethods:
      //   return MaterialPageRoute(
      //     builder: (context) => const PaymentMethodsScreen(),
      //   );
      // case RouteNames.addPromo:
      //   return MaterialPageRoute(
      //     builder: (context) => const AddPromoScreen(),
      //   );
      // case RouteNames.searchingDriver:
      //   return MaterialPageRoute(
      //     builder: (context) => const SearchingDriverScreen(),
      //   );
      // case RouteNames.driverArriving:
      //   return MaterialPageRoute(
      //     builder: (context) => const DriverArrivingScreen(),
      //   );
      // case RouteNames.selectTransportScreen:
      //   return MaterialPageRoute(builder: (context) => const SelectTransportScreen());
      // case RouteNames.chatWithDriver:
      //   return MaterialPageRoute(
      //     builder: (context) => const ChatScreen(),
      //   );
      // case RouteNames.notificationSwitch:
      //   return MaterialPageRoute(
      //     builder: (context) => const ControlNotificationScreen(),
      //   );
      // case RouteNames.topUpPaymentScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const TopUpPaymentScreen(),
      //   );
      // case RouteNames.transactionsHistory:
      //   return MaterialPageRoute(
      //     builder: (context) => const TransactionHistoryScreen(),
      //   );
      // case RouteNames.transactionsDetail:
      //   return MaterialPageRoute(
      //     builder: (context) => const TransactionDetailScreen(),
      //   );
      // case RouteNames.addressScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const AddressScreen(),
      //   );
      // case RouteNames.payment:
      //   return MaterialPageRoute(
      //     builder: (context) => const PaymentsListScreen(),
      //   );
      // case RouteNames.paymentAddCard:
      //   return MaterialPageRoute(
      //     builder: (context) => const PaymentAddCardScreen(),
      //   );
      // case RouteNames.driverDetailInfo:
      //   return MaterialPageRoute(
      //     builder: (context) => const DriverDetailInfoScreen(),
      //   );
      // case RouteNames.clientDetailInfo:
      //   return MaterialPageRoute(
      //     builder: (context) => const ClientDetail(),
      //   );
      //
      // case RouteNames.notificationDetail:
      //   return MaterialPageRoute(
      //     builder: (context) =>
      //         NotificationDetailScreen(notification: settings.arguments as NotificationModel),
      //   );
      // case RouteNames.editProfileClient:
      //   return MaterialPageRoute(
      //     builder: (context) => EditProfileClientScreen(
      //       navigateFromAuth: settings.arguments as bool,
      //     ),
      //   );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(child: Text("Route not found!")),
          ),
        );
    }
  }
}
