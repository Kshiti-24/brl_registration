// // To parse this JSON data, do
// //
// //     final welcome = welcomeFromJson(jsonString);

// import 'dart:convert';

// BV2RegistrationModel bV2RegistrationModelFromJson(String str) =>
//     BV2RegistrationModel.fromJson(json.decode(str));

// String bV2RegistrationModelToJson(BV2RegistrationModel data) =>
//     json.encode(data.toJson());

// class BV2RegistrationModel {
//   BV2RegistrationModel({
//     required this.teamName,
//     required this.leaderName,
//     required this.email,
//     required this.hosteler,
//     required this.year,
//     required this.branch,
//     required this.phoneNo,
//     required this.rollNo,
//     required this.teamMember,
//   });

//   String teamName;
//   String leaderName;
//   String email;
//   String hosteler;
//   String year;
//   String branch;
//   String phoneNo;
//   String rollNo;
//   BV2RegistrationTeamMember teamMember;

//   factory BV2RegistrationModel.fromJson(Map<String, dynamic> json) =>
//       BV2RegistrationModel(
//         teamName: json["team_name"],
//         leaderName: json["leader_name"],
//         email: json["email"],
//         hosteler: json["hosteler"],
//         year: json["year"],
//         branch: json["branch"],
//         phoneNo: json["phoneNo"],
//         rollNo: json["rollNo"],
//         teamMember: BV2RegistrationTeamMember.fromJson(json["team_member"]!),
//       );

//   Map<String, dynamic> toJson() => {
//         "team_name": teamName,
//         "leader_name": leaderName,
//         "email": email,
//         "hosteler": hosteler,
//         "year": year,
//         "branch": branch,
//         "phoneNo": phoneNo,
//         "rollNo": rollNo,
//         "team_member": teamMember.toJson(),
//       };
// }

// class BV2RegistrationTeamMember {
//   BV2RegistrationTeamMember({
//     this.mName,
//     this.mEmail,
//     this.mRollNo,
//     this.mYear,
//     this.mHosteler,
//     this.mBranch,
//     this.mPhoneNo,
//   });
//   String? mName;
//   String? mEmail;
//   String? mYear;
//   String? mHosteler;
//   String? mBranch;
//   String? mPhoneNo;
//   String? mRollNo;

//   factory BV2RegistrationTeamMember.fromJson(Map<String, dynamic> json) =>
//       BV2RegistrationTeamMember(
//         mEmail: json["m_email"],
//         mRollNo: json["m_rollNo"],
//         mName: json["m_name"],
//         mYear: json["m_year"],
//         mHosteler: json["m_hosteler"],
//         mBranch: json["m_branch"],
//         mPhoneNo: json["m_phoneNo"],
//       );

//   Map<String, dynamic> toJson() => {
//         "m_name": mName,
//         "m_email": mEmail,
//         "m_hosteler": mHosteler,
//         "m_year": mYear,
//         "m_branch": mBranch,
//         "m_rollNo": mRollNo,
//         "m_phoneNo": mPhoneNo,
//       };
// }
