import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class BV2RegistrationController {
  Future<String> register({
    required String team_name,
    required String l_name,
    required String l_email,
    required int l_otp,
    required bool l_hosteler,
    required int l_year,
    required String l_branch,
    required int l_rollNo,
    required int l_phoneNo,
    String? m_name,
    String? m_email,
    int? m_otp,
    bool? m_hosteler,
    int? m_year,
    String? m_branch,
    int? m_rollNo,
    int? m_phoneNo,
  }) async {
    // String x = jsonEncode({
    //   "team_name": teamname,
    //   "leader_name": name,
    //   "email": email,
    //   "hosteler": hosteler,
    //   "year": year,
    //   "branch": branch,
    //   "phoneNo": phone,
    //   "rollNo": roll,
    //   "team_member": {
    //     "m_email": email,
    //     "m_rollNo": roll,
    //     "m_name": name,

    //     "m_phoneNo": phone,
    //     "m_branch": branch,
    //     "m_year": year,
    //     "m_hosteler": hosteler
    //   }
    if (l_email != null && m_email != '') {
      return teamRegister(
          team_name,
          l_name,
          l_email,
          l_otp,
          l_hosteler,
          l_year,
          l_branch,
          l_rollNo,
          l_phoneNo,
          m_name!,
          m_email!,
          m_otp!,
          m_hosteler!,
          m_year!,
          m_branch!,
          m_rollNo!,
          m_phoneNo!);
    } else {
      return individualRegister(
        team_name,
        l_name,
        l_email,
        l_otp,
        l_hosteler,
        l_year,
        l_branch,
        l_rollNo,
        l_phoneNo,
      );
    }
  }

  Future<String> teamRegister(
      String team_name,
      String l_name,
      String l_email,
      int l_otp,
      bool l_hosteler,
      int l_year,
      String l_branch,
      int l_rollNo,
      int l_phoneNo,
      String m_name,
      String m_email,
      int m_otp,
      bool m_hosteler,
      int m_year,
      String m_branch,
      int m_rollNo,
      int m_phoneNo) async {
    Response res;
    Dio dio = Dio();
    try {
      res = await dio.post("http://3.110.128.223:5000/register", data: {
        "team_name": team_name,
        "leader_name": l_name,
        "email": l_email,
        "hosteler": l_hosteler,
        "year": l_year,
        "branch": l_branch,
        "phoneNo": l_phoneNo,
        "rollNo": l_rollNo,
        "team_member": {
          "m_email": m_email,
          "m_rollNo": m_rollNo,
          "m_name": m_name,
          "m_phoneNo": m_phoneNo,
          "m_branch": m_branch,
          "m_year": m_year,
          "m_hosteler": m_hosteler
        }
      });
      print(res.statusCode);
      print(res.data);
      return res.data;
    } catch (e) {
      print('Caught an error in API call!');
      print('e is: ${e.toString()}');
      // Alert(context: context, title: 'Http POST error', desc: '$e').show();
      // print('Status code in apiCall() catch is ${res.statusCode}');
      return e.toString();
    }
  }

  Future<String> individualRegister(
    String team_name,
    String l_name,
    String l_email,
    int l_otp,
    bool l_hosteler,
    int l_year,
    String l_branch,
    int l_rollNo,
    int l_phoneNo,
  ) async {
    // String x = jsonEncode({
    //   "team_name": teamname,
    //   "leader_name": name,
    //   "email": email,
    //   "hosteler": hosteler,
    //   "year": year,
    //   "branch": branch,
    //   "phoneNo": phone,
    //   "rollNo": roll,
    //   "team_member": {
    //     "m_email": email,
    //     "m_rollNo": roll,
    //     "m_name": name,

    //     "m_phoneNo": phone,
    //     "m_branch": branch,
    //     "m_year": year,
    //     "m_hosteler": hosteler
    //   }
    Response res;
    Dio dio = Dio();
    try {
      res = await dio.post("http://3.110.128.223:5000/register", data: {
        "team_name": team_name,
        "l_name": l_name,
        "l_email": l_email,
        "l_otp": l_otp,
        "l_hosteler": l_hosteler,
        "l_year": l_year,
        "l_branch": l_branch,
        "l_rollNo": l_rollNo,
        "l_phoneNo": l_phoneNo,
      });
      print(res.statusCode);
      print(res.data);
      return res.data;
    } catch (e) {
      print('Caught an error in API call!');
      print('e is: ${e.toString()}');
      // Alert(context: context, title: 'Http POST error', desc: '$e').show();
      // print('Status code in apiCall() catch is ${res.statusCode}');
      return e.toString();
    }
  }
}

showSnackBarr(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(content),
    backgroundColor: Colors.blue,
    duration: const Duration(seconds: 3),
  ));
}

showAlertDialog(BuildContext context, String msg) {
  // Create button
  Widget okButton = ElevatedButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    content: Text(msg),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

void dispose() {}
