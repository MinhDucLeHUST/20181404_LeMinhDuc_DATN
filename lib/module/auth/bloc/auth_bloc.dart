// import 'package:motorbike_crash_detection/modules/auth/repo/auth_local_storage_repo.dart';
// import 'package:motorbike_crash_detection/modules/auth/repo/auth_repo.dart';
// import 'package:motorbike_crash_detection/modules/providers/bloc_provider.dart';
// import 'package:motorbike_crash_detection/utils/debug_print_message.dart';

// import '../model/auth_model.dart';

// class AuthBloc implements BlocBase {
//   @override
//   void dispose() {}

//   static Future<bool> signIn(String fcmToken) async {
//     // String fcmToken = await getFcmTokenFromLocalStorage() ?? '';
//     DebugPrint.dataLog(currentFile: 'auth_bloc', title: 'FCM', data: fcmToken);
//     final AuthModel? signInRes = await AuthRepo.signInRepo(fcmToken: fcmToken);
//     if (signInRes!.accessToken != null) {
//       await AuthLocalStorageRepo.setBackendUserAccessTokenToLocalStorage(
//           accessToken: signInRes.accessToken);
//       DebugPrint.dataLog(
//           currentFile: 'auth_bloc',
//           title: "backend accessToken",
//           data: signInRes.accessToken);
//       return true;
//     }

//     return false;
//   }

//   static Future<bool> signUp(Map<String, dynamic> signUpData) async {
//     final AuthModel signUpRes =
//         await AuthRepo.signUpRepo(signUnData: signUpData);

//     if (signUpRes.accessToken != null) {
//       await AuthLocalStorageRepo.setBackendUserAccessTokenToLocalStorage(
//           accessToken: signUpRes.accessToken);
//       DebugPrint.dataLog(
//           currentFile: 'auth_bloc',
//           title: "signUp successful",
//           data: signUpRes.accessToken);
//       return true;
//     }
//     DebugPrint.dataLog(
//         currentFile: 'auth_bloc',
//         title: "signUp fail",
//         data: signUpRes.accessToken);
//     return false;
//   }
// }
