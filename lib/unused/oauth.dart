// import 'dart:convert';
// import 'dart:io';
// import 'package:http/http.dart' as http;
//
// // Define the service account credentials
// const String serviceAccountKeyFilePath = 'asset/service-account.json';
// final List<String> scopes = [
//   'https://www.googleapis.com/auth/admin.directory.user.readonly'
// ];
// const String directoryApiEndpoint =
//     'https://www.googleapis.com/admin/directory/v1/users/';
//
// Future<void> validate() async {
//   // Define the email address to validate
//   const String emailAddress = 'utkarsh2110024@akgec.ac.in';
//
// // Build the Google API OAuth 2.0 access token
//   final Map<String, dynamic> serviceAccountKey =
//       json.decode(File(serviceAccountKeyFilePath).readAsStringSync());
//       print(serviceAccountKey.toString());
//   final String clientId = serviceAccountKey['client_id'];
//   final String clientSecret = serviceAccountKey['client_secret'];
//   final String refreshToken = serviceAccountKey['refresh_token'];
//   print(clientId);
//   print(clientSecret);
//   print(refreshToken);
//   final String accessToken =
//       await getAccessToken(clientId, clientSecret, refreshToken, scopes);
//
// // Construct the Google API endpoint URL to validate the email address
//   const String endpointUrl = directoryApiEndpoint + emailAddress;
//
// // Call the Google API to validate the email address
//   final response = await http.get( Uri.parse(endpointUrl)
//     ,
//     headers: {'Authorization': 'Bearer $accessToken'},
//   );
//
//   if (response.statusCode == 200) {
//     print('Email address is valid');
//   } else if (response.statusCode == 404) {
//     print('Email address is invalid');
//   } else {
//     print('An error occurred: ${response.reasonPhrase}');
//   }
//
// }
//
// // Function to get the Google API OAuth 2.0 access token
// Future<String> getAccessToken(String clientId, String clientSecret,
//     String refreshToken, List<String> scopes) async {
//   final String tokenEndpoint = 'https://oauth2.googleapis.com/token';
//   final String grantType = 'refresh_token';
//
//   final response = await http.post(
//     tokenEndpoint as Uri,
//     headers: {'content-type': 'application/x-www-form-urlencoded'},
//     body: {
//       'client_id': clientId,
//       'client_secret': clientSecret,
//       'refresh_token': refreshToken,
//       'grant_type': grantType,
//       'scope': scopes.join(' '),
//     },
//   );
//
//   if (response.statusCode == 200) {
//     final Map<String, dynamic> responseData = json.decode(response.body);
//     final String accessToken = responseData['access_token'];
//     return accessToken;
//   } else {
//     throw Exception('Failed to get access token: ${response.reasonPhrase}');
//   }
// }
//
// void main() {
//   validate();
// }
