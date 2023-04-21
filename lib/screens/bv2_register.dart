import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:registration/constants/registration_details_fields.dart';
import 'package:registration/controllers/bv2_registration_controller.dart';

import 'dart:developer' as devtools show log;

import 'package:registration/widgets/text_form_field.dart';

extension Log on Object {
  void log() {
    devtools.log(this.toString());
  }
}

class BV2Registration extends StatefulWidget {
  const BV2Registration({Key? key}) : super(key: key);

  @override
  State<BV2Registration> createState() => _BV2RegistrationState();
}

class _BV2RegistrationState extends State<BV2Registration> {
  final TextEditingController _teamNameController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNoController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _rollNoController = TextEditingController();
  final TextEditingController _mnameController = TextEditingController();
  final TextEditingController _mphoneNoController = TextEditingController();
  final TextEditingController _memailController = TextEditingController();
  final TextEditingController _mrollNoController = TextEditingController();
  String mdropdownValue = list.first;
  String mydropdownValue = ylist.first;
  String mbdropdownValue = blist.first;
  bool show = false;
  bool option = true;
  String dropdownValue = list.first;
  String ydropdownValue = ylist.first;
  String bdropdownValue = blist.first;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Team Member Details')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Team Name',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                textFormFieldWidget(
                    keyboardType: TextInputType.name,
                    controller: _teamNameController,
                    hintText: "Enter Team Name",
                    icon: Icons.drive_file_rename_outline_outlined,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Team Name cannot be empty';
                      }
                      if (RegExp(
                              r'^(?=.{1,15}$)[a-zA-Z0-9]+(?:\s[a-zA-Z0-9]+)*$')
                          .hasMatch(value)) {
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
                const SizedBox(
                  height: 2,
                ),
                textFormFieldWidget(
                    controller: _nameController,
                    keyboardType: TextInputType.name,
                    hintText: "Enter Name",
                    icon: Icons.drive_file_rename_outline_outlined,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Name cannot be empty';
                      }
                      if (RegExp(r'^[a-zA-Z]+(?:\s[a-zA-Z]+)*$')
                          .hasMatch(value)) {
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
                const SizedBox(
                  height: 2,
                ),
                textFormFieldWidget(
                    controller: _phoneNoController,
                    keyboardType: TextInputType.number,
                    hintText: "Enter Phone No.",
                    icon: Icons.phone_outlined,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Phone No. cannot be empty';
                      }
                      if (RegExp(r'^(?:\+91|0)?[6789]\d{9}$').hasMatch(value)) {
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
                const SizedBox(
                  height: 2,
                ),
                textFormFieldWidget(
                    controller: _emailController,
                    keyboardType: TextInputType.text,
                    hintText: "Enter Email",
                    icon: Icons.email_outlined,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email cannot be empty';
                      }
                      if (RegExp(r'^[a-zA-Z]+[0-9]{7,8}@akgec\.ac\.in$')
                          .hasMatch(value)) {
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
                const SizedBox(
                  height: 2,
                ),
                textFormFieldWidget(
                    keyboardType: TextInputType.number,
                    controller: _rollNoController,
                    hintText: "Enter Roll No.",
                    icon: Icons.numbers_outlined,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Roll No. cannot be empty';
                      }
                      if (RegExp(r'^(21|22)0027\d{7}$').hasMatch(value)) {
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
                    disabledHint: Text(ydropdownValue),
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
                Visibility(
                  visible: show,
                  child: Column(children: [
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
                        controller: _mnameController,
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
                          if (RegExp(r'^[a-zA-Z]+(?:\s[a-zA-Z]+)*$')
                              .hasMatch(value)) {
                            // na = true;
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
                        controller: _mphoneNoController,
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
                          if (RegExp(r'^(?:\+91|0)?[6789]\d{9}$')
                              .hasMatch(value)) {
                            // pn = true;
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
                        controller: _memailController,
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
                            // cm = true;
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
                        controller: _mrollNoController,
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
                            // rn = true;
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
                      value: mbdropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      underline: Container(
                        height: 2,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          mbdropdownValue = value!;
                        });
                      },
                      items:
                          blist.map<DropdownMenuItem<String>>((String value) {
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
                        value: mdropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        underline: Container(
                          height: 2,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            mdropdownValue = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
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
                        value: mydropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        underline: Container(
                          height: 2,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            mydropdownValue = value!;
                          });
                        },
                        items:
                            ylist.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      )
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                  ]),
                ),
                Visibility(
                  visible: !show,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        show = !show;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 35,
                      child: Center(child: Text("Add Team Member")),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),

                Center(
                  child: ElevatedButton(
                    onPressed: () async {
                      var res;
                      if (formKey.currentState!.validate() &&
                          dropdownValue != list.first &&
                          ydropdownValue != ylist.first &&
                          bdropdownValue != blist.first) {
                        print("Validated");
                        // ("Validated").log();
                        print("hey");
                        // "hey".log();
                        print(_teamNameController.text.toString());
                        print(_emailController.text.toString());
                        print(_nameController.text.toString());
                        print(_phoneNoController.text.toString());
                        print(_rollNoController.text.toString());
                        print(bdropdownValue);
                        print(dropdownValue);
                        print(ydropdownValue);
                        print(_memailController.text);
                        print(_mnameController.text);
                        print(_mphoneNoController.text.toString());
                        print(_mrollNoController.text.toString());
                        print(mbdropdownValue);
                        print(mdropdownValue);
                        print(mydropdownValue);
                        
                        if (show) {
                          res = await BV2RegistrationController().register(
                            _teamNameController.text.toString(),
                            _emailController.text.toString(),
                            _nameController.text.toString(),
                            _phoneNoController.text.toString(),
                            _rollNoController.text.toString(),
                            bdropdownValue,
                            dropdownValue,
                            ydropdownValue,
                            _memailController.text,
                            _mnameController.text,
                            _mphoneNoController.text.toString(),
                            _mrollNoController.text.toString(),
                            mbdropdownValue,
                            mdropdownValue,
                            mydropdownValue,
                          );
                        } else {
                          res = await BV2RegistrationController()
                              .individualRegister(
                            _teamNameController.text.toString(),
                            _emailController.text.toString(),
                            _nameController.text.toString(),
                            _phoneNoController.text.toString(),
                            _rollNoController.text.toString(),
                            bdropdownValue,
                            dropdownValue,
                            ydropdownValue,
                          );
                        }
                        print(res);
                        // res.log();
                        showSnackBarr("Registered Successfully", context);
                        ("Registered Successfully").log();
                      } else {
                        // showSnackBarr("Not registered", context);
                        showSnackBarr(res, context);
                        ("Not registered").log();
                        print("Not Validated");
                        ("Not Validated").log();
                      }
                    },
                    child: const Text("Submit"),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () async {
                //     var d = await BV2RegistrationController()
                //         .register("a", "a", "a", "a", "a", "a", "a", "a");
                //     print(d);
                //   },
                //   child: Text("Register"),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
