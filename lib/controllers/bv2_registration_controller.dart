import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class BV2RegistrationController {
  dynamic register({
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
  }) {
    print(m_email);
    print(l_email);
    if (m_email != null && l_email != '') {
      print("tema");
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
    dynamic x = {
      "team_name": team_name,
      "l_name": l_name,
      "l_email": l_email,
      "l_otp": l_otp,
      "l_hosteler": l_hosteler,
      "l_year": l_year,
      "l_branch": l_branch,
      "l_rollNo": l_rollNo,
      "l_phoneNo": l_phoneNo,
      "m_name": m_name,
      "m_email": m_email,
      "m_otp": m_otp,
      "m_hosteler": m_hosteler,
      "m_year": m_year,
      "m_branch": m_branch,
      "m_rollNo": m_rollNo,
      "m_phoneNo": m_phoneNo
    };
    print("this");
    print(x);
    try {
      res = await dio.post("http://3.6.75.26:5000/register", data: x);
      print(res.statusCode);
      print(res.data);
      print("hello");
      print(res.data["message"]);
      print(res.data["success"]);
      return res.data["message"];
    } on DioError catch (e) {
      print('Caught an error in API call!');
      print('e is: ${e.toString()}');
      if (e.response!.statusCode == 500) {
        return (e.response!.data["message"]);
      } else {
        return e.message!;
      }
    }
  }

  Future<dynamic> individualRegister(
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
    Response res;
    Dio dio = Dio();
    dynamic x = {
      "team_name": team_name,
      "l_name": l_name,
      "l_email": l_email,
      "l_otp": l_otp,
      "l_hosteler": l_hosteler,
      "l_year": l_year,
      "l_branch": l_branch,
      "l_rollNo": l_rollNo,
      "l_phoneNo": l_phoneNo,
    };
    print(x);
    try {
      res = await dio.post("http://3.6.75.26:5000/register", data: x);
      print(res.statusCode);
      print(res.data);
      print("hello");
      print(res.data["message"]);
      print(res.data["success"]);
      return res.data["message"];
    } on DioError catch (e) {
      print('Caught an error in API call!');
      print('e is: ${e.toString()}');
      // print('Status code in apiCall() catch is ${res.statusCode}');
      if (e.response!.statusCode == 500) {
        return (e.response!.data["message"]);
      } else {
        return e.message!;
      }
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
    child: const Text("OK"),
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
