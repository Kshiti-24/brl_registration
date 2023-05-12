class TeamDetailsLeader {
  String id = "bv2_team_details";
  late final String teamName;
  late final String leaderName;
  late final String lgender;
  late final String email;
  late final String hosteler;
  late final String year;
  late final String branch;
  late final String phoneNo;
  late final String rollNo;

  TeamDetailsLeader({
    required this.teamName,
    required this.leaderName,
    required this.lgender,
    required this.email,
    required this.hosteler,
    required this.year,
    required this.branch,
    required this.phoneNo,
    required this.rollNo,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'teamName': teamName,
      'leaderName': leaderName,
      'email': email,
      'hosteler': hosteler,
      'year': year,
      'branch': branch,
      'phoneNo': phoneNo,
      'rollNo': rollNo,
    };
  }

  TeamDetailsLeader.fromMap(Map<String, dynamic> result)
      : id = result['id'],
        teamName = result['teamName'],
        leaderName = result['leaderName'],
        email = result['email'],
        hosteler = result['hosteler'],
        year = result['year'],
        branch = result['branch'],
        phoneNo = result['phoneNo'],
        rollNo = result['rollNo'];
  // @override
  // String toString() {
  //   return 'User{id: $id, accessToken: $accessToken, refreshToken: $refreshToken}';
  // }
}

class TeamMemberDetails {
  String id = "bv2_team_member_details";
  String mName;
  String mEmail;
  String mYear;
  String mHosteler;
  String mBranch;
  String mPhoneNo;
  String mRollNo;

  TeamMemberDetails({
    required this.id,
    required this.mName,
    required this.mEmail,
    required this.mRollNo,
    required this.mYear,
    required this.mHosteler,
    required this.mBranch,
    required this.mPhoneNo,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'mName': mName,
      'mEmail': mEmail,
      'mRollNo': mRollNo,
      'mYear': mYear,
      'mHosteler': mHosteler,
      'mBranch': mBranch,
      'mPhoneNo': mPhoneNo,
    };
  }

  TeamMemberDetails.fromMap(Map<String, dynamic> result)
      : id = result['id'],
        mName = result['mName'],
        mEmail = result['mEmail'],
        mRollNo = result['mRollNo'],
        mYear = result['mYear'],
        mHosteler = result['mHosteler'],
        mBranch = result['mBranch'],
        mPhoneNo = result['mPhoneNo'];
}
