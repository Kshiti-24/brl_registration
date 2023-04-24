import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class BV2RegistrationController {
  Future<String> register(
      {required String teamname,
      required String lEmail,
      required String lName,
      required String lPhone,
      required String lRoll,
      required String lBranch,
      required String lHosteler,
      required String lYear,
      String? mEmail,
      String? mName,
      String? mPhone,
      String? mRoll,
      String? mBranch,
      String? mHosteler,
      String? mYear}) async {
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
    if (mEmail != null && mEmail != '') {
      return teamRegister(
          teamname,
          lEmail,
          lName,
          lPhone,
          lRoll,
          lBranch,
          lHosteler,
          lYear,
          mEmail,
          mName!,
          mPhone!,
          mRoll!,
          mBranch!,
          mHosteler!,
          mYear!);
    } else {
      return individualRegister(
          teamname, lEmail, lName, lPhone, lRoll, lBranch, lHosteler, lYear);
    }
  }

  Future<String> teamRegister(
      String teamname,
      String lEmail,
      String lName,
      String lPhone,
      String lRoll,
      String lBranch,
      String lHosteler,
      String lYear,
      String mEmail,
      String mName,
      String mPhone,
      String mRoll,
      String mBranch,
      String mHosteler,
      String mYear) async {
    Response res;
    Dio dio = Dio();
    try {
      res = await dio.post(
          'https://fuzzy-doodle-bv2-reg-production.up.railway.app/register',
          data: {
            "team_name": teamname,
            "leader_name": lName,
            "email": lEmail,
            "hosteler": lHosteler,
            "year": lYear,
            "branch": lBranch,
            "phoneNo": lPhone,
            "rollNo": lRoll,
            "team_member": {
              "m_email": mEmail,
              "m_rollNo": mRoll,
              "m_name": mName,
              "m_phoneNo": mPhone,
              "m_branch": mBranch,
              "m_year": mYear,
              "m_hosteler": mHosteler
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
      String teamname,
      String lEmail,
      String lName,
      String lPhone,
      String lRoll,
      String lBranch,
      String lHosteler,
      String lYear) async {
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
      res = await dio.post(
          'https://fuzzy-doodle-bv2-reg-production.up.railway.app/register',
          data: {
            "team_name": teamname,
            "leader_name": lName,
            "email": lEmail,
            "hosteler": lHosteler,
            "year": lYear,
            "branch": lBranch,
            "phoneNo": lPhone,
            "rollNo": lRoll
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
