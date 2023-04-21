// import 'package:http/http.dart';

// class BV2RegistrationService {
//   registerRegistrationService(this._dio, {this.baseUrl}) {
//     baseUrl ??= 'https://api.bv2.com';
//   }
//   registerBV2 (BV2RegistrationRequest request) async {
//     final String path = '/api/v1/bv2/register';
//     final Response<String> response = await _dio.post(
//       path,
//       data: request,
//       options: Options(
//         contentType: 'application/json',
//         headers: {
//           'Accept': 'application/json',
//         },
//       ),
//     );
//     return BV2RegistrationResponse.fromJson(response.data!);
//   }
// }


// class BV2RegistrationController {
//   BV2RegistrationController(this._bv2RegistrationService);

//   final BV2RegistrationService _bv2RegistrationService;

//   Future<BV2RegistrationResponse> registerBV2(
//       BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService.registerBV2(request);
//   }

//   Future<BV2RegistrationResponse> registerBV2WithOTP(
//       BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService.registerBV2WithOTP(request);
//   }

//   Future<BV2RegistrationResponse> registerBV2WithOTPAndEmail(
//       BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService.registerBV2WithOTPAndEmail(request);
//   }

//   Future<BV2RegistrationResponse> registerBV2WithOTPAndSMS(
//       BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService.registerBV2WithOTPAndSMS(request);
//   }

//   Future<BV2RegistrationResponse> registerBV2WithOTPAndEmailAndSMS(
//       BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMS(request);
//   }

//   Future<BV2RegistrationResponse> registerBV2WithOTPAndEmailAndSMSAndPush(
//       BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPush(request);
//   }

//   Future<BV2RegistrationResponse> registerBV2WithOTPAndEmailAndPush(
//       BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPush(request);
//   }

//   Future<BV2RegistrationResponse> registerBV2WithOTPAndSMSAndPush(
//       BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPush(request);
//   }

//   Future<BV2RegistrationResponse> registerBV2WithOTPAndPush(
//       BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService.registerBV2WithOTPAndPush(request);
//   }

//   Future<BV2RegistrationResponse> registerBV2WithPush(
//       BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService.registerBV2WithPush(request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoice(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoice(request);
//   }

//   Future<BV2RegistrationResponse> registerBV2WithOTPAndEmailAndPushAndVoice(
//       BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoice(request);
//   }

//   Future<BV2RegistrationResponse> registerBV2WithOTPAndSMSAndPushAndVoice(
//       BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoice(request);
//   }

//   Future<BV2RegistrationResponse> registerBV2WithOTPAndPushAndVoice(
//       BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoice(request);
//   }

//   Future<BV2RegistrationResponse> registerBV2WithPushAndVoice(
//       BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService.registerBV2WithPushAndVoice(request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrint(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrint(request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrint(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrint(request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrint(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrint(request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrint(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrint(request);
//   }

//   Future<BV2RegistrationResponse> registerBV2WithPushAndVoiceAndFingerPrint(
//       BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrint(request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFace(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFace(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFace(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFace(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFace(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFace(request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFace(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFace(request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithPushAndVoiceAndFingerPrintAndFace(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrintAndFace(request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIris(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIris(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIris(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIris(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIris(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIris(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIris(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIris(request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIris(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIris(request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideo(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideo(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideo(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideo(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideo(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideo(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideo(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideo(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideo(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideo(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocument(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocument(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocument(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocument(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocument(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocument(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocument(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocument(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocument(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocument(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignature(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignature(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignature(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignature(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignature(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignature(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignature(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignature(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignature(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignature(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocation(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocation(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocation(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocation(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocation(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocation(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocation(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocation(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocation(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocation(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIP(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIP(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIP(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIP(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIP(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIP(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIP(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIP(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIP(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIP(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDevice(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDevice(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDevice(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDevice(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDevice(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDevice(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDevice(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDevice(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDevice(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDevice(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowser(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowser(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowser(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowser(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowser(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowser(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowser(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowser(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowser(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowser(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocation(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocation(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocation(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocation(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocation(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocation(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocation(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocation(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocation(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocation(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometric(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometric(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometric(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometric(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometric(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometric(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometric(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometric(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometric(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometric(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTP(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTP(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTP(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTP(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTP(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTP(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTP(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTP(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTP(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTP(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmail(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmail(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmail(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmail(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmail(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmail(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmail(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmail(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmail(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmail(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndSMS(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndSMS(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndSMS(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndSMS(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndSMS(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//             request);
//   }

//   Future<BV2RegistrationResponse>
//       registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//           BV2RegistrationRequest request) async {
//     return await _bv2RegistrationService
//         .registerBV2WithOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMSAndPushAndVoiceAndFingerPrintAndFaceAndIrisAndVideoAndDocumentAndSignatureAndLocationAndIPAndDeviceAndBrowserAndGeoLocationAndBiometricAndOTPAndEmailAndSMS(
//             request);
//   }
// }

// class BV2RegistrationResponse {}

// class BV2RegistrationRequest {}
