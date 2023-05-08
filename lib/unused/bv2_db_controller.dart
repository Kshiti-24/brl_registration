// import 'package:path/path.dart';
// import 'package:registration/models/bv2_db_model.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:registration/models/bv2_registration_model.dart';
//
// class DataBaseCon {
//   Future<Database> initializedDB() async {
//     return await openDatabase(
//       join(await getDatabasesPath(), 'db_userExpense.db'),
//       version: 1,
//       onCreate: (Database db, int version) async {
//         return await db.execute(
//           'CREATE TABLE user(id INTEGER PRIMARY KEY, accessToken TEXT NOT NULL, refreshToken TEXT NOT NULL)',
//         );
//       },
//     );
//   }
//
//   Future<Database> initializedComDB() async {
//     return await openDatabase(
//       join(await getDatabasesPath(), 'db_userExpenseBoolee.db'),
//       version: 1,
//       onCreate: (Database db, int version) async {
//         return await db.execute(
//           'CREATE TABLE checkBoolee(id INTEGER PRIMARY KEY, boole INTEGER NOT NULL)',
//         );
//       },
//     );
//   }
//
// // insert data
//   Future<int> insertTeamDetails(TeamDetailsLeader user) async {
//     int result = 0;
//     final Database db = await initializedDB();
//     result = await db.insert('bv2_team_details', user.toMap(),
//         conflictAlgorithm: ConflictAlgorithm.replace);
//     return result;
//   }
//
//   Future<int> insertMemberDetails(
//       mName, mEmail, mYear, mHosteler, mBranch, mPhoneNo, mRollNo) async {
//     int result = 0;
//     TeamMemberDetails memberDetails = TeamMemberDetails(
//       id: "bv2_team_member_details",
//       mName: mName,
//       mEmail: mEmail,
//       mYear: mYear,
//       mHosteler: mHosteler,
//       mBranch: mBranch,
//       mPhoneNo: mPhoneNo,
//       mRollNo: mRollNo,
//     );
//     final Database db = await initializedDB();
//     result = await db.insert('bv2_team_member_details', memberDetails.toMap(),
//         conflictAlgorithm: ConflictAlgorithm.replace);
//     return result;
//   }
//
// // retrieve data
//   Future<List<TeamDetailsLeader>> retrieveTeamDetails() async {
//     final Database db = await initializedDB();
//     final List<Map<String, Object?>> queryResult =
//         await db.query('bv2_team_details');
//     return queryResult.map((e) => TeamDetailsLeader.fromMap(e)).toList();
//   }
//
//   Future<List<TeamMemberDetails>> retrieveTeamMemberDetails() async {
//     final Database db = await initializedDB();
//     final List<Map<String, Object?>> queryResult =
//         await db.query('bv2_team_member_details');
//     return queryResult.map((e) => TeamMemberDetails.fromMap(e)).toList();
//   }
//
// // delete user
//   Future<void> deleteTeamDetails() async {
//     final db = await initializedDB();
//     await db.delete(
//       'bv2_team_details',
//       where: "id = ?",
//       whereArgs: ["bv2_team_details"],
//     );
//   }
//
//   Future<void> deleteTeamMemberDetails() async {
//     final db = await initializedDB();
//     await db.delete(
//       'bv2_team_member_details',
//       where: "id = ?",
//       whereArgs: ["bv2_team_member_details"],
//     );
//   }
// }
