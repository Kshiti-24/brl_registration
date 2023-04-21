// void main() async {
//   Future<String> register(
//       String email,
//       String name,
//       String teamname,
//       String phone,
//       String roll,
//       String branch,
//       String hosteler,
//       String year) async {
//     BV2RegistrationModel bV2RegistrationModel = BV2RegistrationModel(
//       teamName: teamname,
//       leaderName: name,
//       email: email,
//       hosteler: hosteler,
//       year: year,
//       branch: branch,
//       phoneNo: phone,
//       rollNo: roll,
//     );
//     String x = bV2RegistrationModelToJson(bV2RegistrationModel);
//     try {
//       // "trying".log();
//       final response = await http.post(
//           Uri.parse('https://blockverseapi.onrender.com/register'),
//           body: x);

//       if (response.statusCode == 200) {
//         print(response.body);
//         print('Login successfully');
//         // response.body.toString().log();
//         return "true";
//         // showSnackBarr("Registered Successfully", context);
//       } else {
//         print('failed');
//         // "failed".log();
//         return "false";
//         // showSnackBarr("Not registered", context);
//       }
//     } catch (e) {
//       // e.toString().log();
//       return e.toString();
//     }
//   }
// }