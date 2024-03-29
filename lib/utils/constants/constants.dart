import 'package:untitled2/utils/constants/storage_keys.dart';
import 'package:untitled2/utils/icons/app_icons.dart';

const baseUrl = "YANDEX_API_URL";
const notificationUrl = "https://fcm.googleapis.com/fcm/send";
const String apiKey = "0966317a-0c56-4ae7-a7ee-eda74212af4d";
const String firebaseApiKey =
    "key=AAAAu2bt-6Q:APA91bFb6qi6BJVMf98GWfkXoSHmBwrDwsloDSQzp32vZLQeQ6XhnSzelywleNYH4EumgEbyA1hPxwMbi3LCab4G7Ev6ImUD-YG2NK3M-C7CIDIyKODHI6w_EE5FcyYBTScXzx0FaRzn";

List<String> notificationKeys = [
  StorageKeys.generalNotifications,
  StorageKeys.soundNotifications,
  StorageKeys.vibrateNotifications,
  StorageKeys.specialOffersNotifications,
  StorageKeys.promoDiscountNotifications,
  StorageKeys.paymentsNotifications,
  StorageKeys.cashbackNotifications,
  StorageKeys.appUpdatesNotifications,
  StorageKeys.newServiceAvailableNotifications,
  StorageKeys.newTipsAvailableNotifications,
];
List<bool> notificationValues = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];
List<String> securityKeys = [
  StorageKeys.rememberMeSecurity,
  StorageKeys.faceIdMeSecurity,
  StorageKeys.biometricIdMeSecurity,
];
List<bool> securityValues = [
  false,
  false,
  false,
];

class FirebaseCollections {
  static const String addresses = "addresses";
  static const String orders = "orders";
  static const String drivers = "drivers";
  static const String users = "clients";
  static const String requestDriver = 'requestDriver';
  static const String requestClient = 'requestClient';
  static const String yandexApiKeys = 'yandex_api_keys';
}

Map<String, String> iconMapping = {
  "discount": AppIcons.discount,
  "wallet": AppIcons.wallet,
  "location": AppIcons.location,
  "money": AppIcons.money,
  "card": AppIcons.card,
  "profile": AppIcons.profile,
};

class AppConstants {
  static const String client = "client";
  static const String driver = "driver";
}
