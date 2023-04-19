// import 'package:flutter/material.dart';
//
// class Registration extends StatefulWidget {
//   const Registration({Key? key}) : super(key: key);
//
//   @override
//   State<Registration> createState() => _RegistrationState();
// }
//
// class _RegistrationState extends State<Registration> {
//   final TextEditingController _teamNameController = TextEditingController();
//   final TextEditingController _teamLeaderController = TextEditingController();
//   // final TextEditingController _branchController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _rollNoController = TextEditingController();
// //  final TextEditingController _hostelerController = TextEditingController();
//   //final TextEditingController _yearController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

const List<String> list = <String>['  Choose', '  Yes', '  No'];
const List<String> ylist = <String>['  Your year', '  1st', '  2nd'];
const List<String> blist = <String>[
  'Select your branch',
  'CSE',
  'CS',
  'CSE(DS)',
  'CSE(AIML)',
  'AIML',
  'IT',
  'CSIT',
  'CSE(hindi)',
  'ECE',
  'EN',
  'Mechanical',
  'Civil'
];

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final TextEditingController _teamNameController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNoController = TextEditingController();
  // final TextEditingController _branchController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _rollNoController = TextEditingController();
//  final TextEditingController _hostelerController = TextEditingController();
  //final TextEditingController _yearController = TextEditingController();
  bool tn = false;
  bool na = false;
  bool pn = false;
  bool cm = false;
  bool rn = false;
  String dropdownValue = list.first;
  String ydropdownValue = ylist.first;
  String bdropdownValue = blist.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Team Member Details')),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Team Name',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              TextFormField(
                  controller: _teamNameController,
                  decoration: InputDecoration(
                    hintText: "Enter Team Name",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),
                    suffixIcon: Icon(
                      Icons.drive_file_rename_outline_outlined,
                      size: 20,
                      color: Colors.black,
                    ),
                    // suffix: Text("@akgec.ac.in"),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Team Name cannot be empty';
                    }
                    if (RegExp(r'^[a-zA-Z0-9_\#@+-]{3,15}$').hasMatch(value)) {
                      tn = true;
                      return null;
                    } else {
                      return "Enter correct Team Name";
                    }
                  }),
              const SizedBox(height: 5.0),
              const Text(
                'Name',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: "Enter Name",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),
                    suffixIcon: Icon(
                      Icons.drive_file_rename_outline_outlined,
                      size: 20,
                      color: Colors.black,
                    ),
                    // suffix: Text("@akgec.ac.in"),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Name cannot be empty';
                    }
                    if (RegExp(r'^[a-zA-Z]+(?:\s[a-zA-Z]+)+$')
                        .hasMatch(value)) {
                      na = true;
                      return null;
                    } else {
                      return "Enter correct Name";
                    }
                  }),
              const SizedBox(height: 5.0),
              const Text(
                'Phone No',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              TextFormField(
                  controller: _phoneNoController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Phone No.",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),
                    suffixIcon: Icon(
                      Icons.phone_outlined,
                      size: 20,
                      color: Colors.black,
                    ),
                    // suffix: Text("@akgec.ac.in"),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Phone No. cannot be empty';
                    }
                    if (RegExp(r'^(?:\+91|0)?[6789]\d{9}$').hasMatch(value)) {
                      pn = true;
                      return null;
                    } else {
                      return "Enter correct Phone No.";
                    }
                  }),
              const SizedBox(height: 5.0),
              const Text(
                'College Email',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Enter Email",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),
                    suffixIcon: Icon(
                      Icons.email_outlined,
                      size: 20,
                      color: Colors.black,
                    ),
                    // suffix: Text("@akgec.ac.in"),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email cannot be empty';
                    }
                    if (RegExp(r'^[a-zA-Z]+[0-9]{7,8}@akgec\.ac\.in$')
                        .hasMatch(value)) {
                      cm = true;
                      return null;
                    } else {
                      return "Enter correct Email";
                    }
                  }),
              const SizedBox(height: 5.0),
              const Text(
                'Roll No',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              TextFormField(
                  controller: _rollNoController,
                  decoration: InputDecoration(
                    hintText: "Enter Roll No.",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(15.0),
                    ),
                    suffixIcon: Icon(
                      Icons.numbers_outlined,
                      size: 20,
                      color: Colors.black,
                    ),
                    // suffix: Text("@akgec.ac.in"),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Roll No. cannot be empty';
                    }
                    if (RegExp(r'^(21|22)0027\d{7}$').hasMatch(value)) {
                      rn = true;
                      return null;
                    } else {
                      return "Enter correct Roll No.";
                    }
                  }),
              const SizedBox(height: 5.0),
              const Text(
                'Branch',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              DropdownButton<String>(
                value: bdropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                underline: Container(
                  height: 2,
                ),
                onChanged: (String? value) {
                  setState(() {
                    bdropdownValue = value!;
                  });
                },
                items: blist.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(height: 5.0),
              Row(children: [
                const Text(
                  'Hosteler',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  underline: Container(
                    height: 2,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(
                  width: 20,
                ),
                const Text(
                  'Year',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                DropdownButton<String>(
                  value: ydropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  underline: Container(
                    height: 2,
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      ydropdownValue = value!;
                    });
                  },
                  items: ylist.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                )
              ]),
              const SizedBox(height: 10.0),
              GestureDetector(
                onTap: () {
                  if (tn == true &&
                      na == true &&
                      pn == true &&
                      cm == true &&
                      rn == true &&
                      dropdownValue != list.first &&
                      ydropdownValue != ylist.first &&
                      bdropdownValue != blist.first) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Registered Successfully"),
                      backgroundColor: Colors.blue,
                      duration: Duration(seconds: 3),
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Not registered"),
                      backgroundColor: Colors.blue,
                      duration: Duration(seconds: 3),
                    ));
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 35,
                  child: Center(child: Text("Submit")),
                ),
              )
            ]),
          ),
        ));
  }
}
