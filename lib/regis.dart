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

const List<String> list = <String>['Yes', 'No'];
const List<String> ylist = <String>['1st', '2nd'];
const List<String> blist = <String>[
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
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNoController = TextEditingController();
  // final TextEditingController _branchController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _rollNoController = TextEditingController();
//  final TextEditingController _hostelerController = TextEditingController();
  //final TextEditingController _yearController = TextEditingController();
  String dropdownValue = list.first;
  String ydropdownValue = ylist.first;
  String bdropdownValue = blist.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Team Member Details')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Name',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                hintText: 'Enter name',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Phone No',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: _phoneNoController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Enter phone number',
              ),
            ),
            const SizedBox(height: 16.0),
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
            // TextField(
            //   controller: _branchController,
            //   decoration: const InputDecoration(
            //     hintText: 'Enter branch',
            //   ),
            // ),
            const SizedBox(height: 16.0),
            const Text(
              'Email',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: 'Enter email',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Roll No',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: _rollNoController,
              decoration: const InputDecoration(
                hintText: 'Enter roll number',
              ),
            ),
            const SizedBox(height: 16.0),
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
            )
            //    const Text(
            //      'Hosteler',
            //      style: TextStyle(
            //        fontSize: 18.0,
            //        fontWeight: FontWeight.bold,
            //      ),
            //    ),
            //    TextField(
            //      controller: _hostelerController,
            //      decoration: const InputDecoration(
            //        hintText: 'Enter hosteler status',
            //      ),
            //    ),
            ,
            const SizedBox(height: 16.0),
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
            //  TextField(
            //    controller: _yearController,
            //    decoration: const InputDecoration(
            //      hintText: 'Enter year',
            //    ),
            //  ),
          ]),
        ));
  }
}
