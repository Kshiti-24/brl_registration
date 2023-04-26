import 'dart:developer' as devtools show log;

import 'package:flutter/material.dart';
import 'package:registration/constants/registration_details_fields.dart';
import 'package:registration/controllers/bv2_registration_controller.dart';
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
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneNoController = TextEditingController();
  late TextEditingController _emailController = TextEditingController();
  late TextEditingController _rollNoController = TextEditingController();
  final TextEditingController _mnameController = TextEditingController();
  final TextEditingController _mphoneNoController = TextEditingController();
  final TextEditingController _memailController = TextEditingController();
  final TextEditingController _mrollNoController = TextEditingController();
  String mdropdownValue = list.first;
  String mydropdownValue = ylist.first;
  String mbdropdownValue = blist.first;
  bool show = false;
  bool cardHeight = false;
  bool option = true;
  bool _loading = false;
  bool optloading = false;
  bool cheeek = false;
  String dropdownValue = list.first;
  String ydropdownValue = ylist.first;
  String bdropdownValue = blist.first;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Event Name',
          style: TextStyle(color: Colors.blue),
        )),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: const Text(
                    'Team Name',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                textFormFieldWidget(
                    keyboardType: TextInputType.name,
                    controller: _teamNameController,
                    hintText: "Enter your Team Name",
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
                const SizedBox(height: 15.0),
                Center(
                  child: const Text(
                    'MEMBER 1',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
                const SizedBox(height: 15.0),
                Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Card(
                      elevation: 5,
                      shadowColor: Colors.black,
                      child: SizedBox(
                        width: 400,
                        height: 630,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Leader Name',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                textFormFieldWidget(
                                    controller: _nameController,
                                    keyboardType: TextInputType.name,
                                    hintText: "Enter Leader Name",
                                    icon: Icons
                                        .drive_file_rename_outline_outlined,
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
                                const SizedBox(height: 10.0),
                                const Text(
                                  'Phone No',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
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
                                      if (RegExp(r'^(?:\+91|0)?[6789]\d{9}$')
                                          .hasMatch(value)) {
                                        return null;
                                      } else {
                                        return "Enter correct Phone No.";
                                      }
                                    }),
                                const SizedBox(height: 10.0),
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
                                    height: 5,
                                  ),
                                  onChanged: (String? value) {
                                    setState(() {
                                      bdropdownValue = value!;
                                    });
                                  },
                                  items: blist.map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                                const SizedBox(height: 10.0),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(children: [
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
                                        height: 5,
                                      ),
                                      onChanged: (String? value) {
                                        setState(() {
                                          dropdownValue = value!;
                                        });
                                      },
                                      items: list.map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                    SizedBox(
                                      width: 5,
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
                                      items: ylist
                                          .map<DropdownMenuItem<String>>(
                                              (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    )
                                  ]),
                                ),
                                const SizedBox(height: 10.0),
                                const Text(
                                  'College Email',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                textFormFieldWidget(
                                    controller: _emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    hintText: "Enter Email",
                                    icon: Icons.email_outlined,
                                    validator: (value) {
                                      value = value!.toLowerCase();
                                      if (value!.isEmpty) {
                                        return 'Email cannot be empty';
                                      } else {
                                        String name =
                                            _nameController.text.toString();
                                        if (name.isEmpty) {
                                          return 'Name cannot be empty';
                                        }
                                        //     .substring(
                                        //         0,
                                        //         _nameController.text
                                        //             .toString()
                                        //             .indexOf(" "));
                                        // print(
                                        //     name.substring(0, name.indexOf(" ")));
                                        int r = name.indexOf(" ");
                                        String ans = "";
                                        if (r > 0) {
                                          ans = name
                                              .substring(0, r)
                                              .toLowerCase();
                                        } else {
                                          ans = name.toLowerCase();
                                        }
                                        int p = ylist.indexOf(ydropdownValue);
                                        // print(p);
                                        String sy = yylist[p];
                                        // print(sy);
                                        int k = blist.indexOf(bdropdownValue);
                                        // print(k);
                                        String sn = cslist[k];
                                        // print(sn);
                                        if (sy == '22') {
                                          sn = '164';
                                        }
                                        if (RegExp(r"^" +
                                                ans +
                                                sy +
                                                sn +
                                                r"([0-9]{3})([-]?[dD]?)(@akgec\.ac\.in)$")
                                            .hasMatch(value)) {
                                          cheeek = true;
                                          return null;
                                        } else {
                                          return "Enter correct College Email";
                                        }
                                      }
                                    }),
                                Visibility(
                                    visible: cheeek,
                                    child: Container(
                                      width: 150,
                                      height: 15,
                                      child: Center(
                                        child: Text("send otp"),
                                      ),
                                    )),
                                const SizedBox(height: 10.0),
                                const Text(
                                  'Roll No',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
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
                                      int pp = ylist.indexOf(ydropdownValue);
                                      // print(pp);
                                      String syy = yylist[pp];
                                      // print(syy);
                                      int tr = blist.indexOf(bdropdownValue);
                                      // print(tr);
                                      String ww = rlist[tr];
                                      // print(ww);
                                      if (RegExp(r"^" +
                                              syy +
                                              r"(0027)" +
                                              ww +
                                              r"([0-9]{4})$")
                                          .hasMatch(value)) {
                                        return null;
                                      } else {
                                        return "Enter correct Roll No.";
                                      }
                                    }),
                              ]),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                Visibility(
                  visible: show,
                  child: Column(children: [
                    const SizedBox(height: 15.0),
                    Center(
                      child: const Text(
                        'MEMBER 2',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Center(
                      child: Card(
                        elevation: 5,
                        shadowColor: Colors.black,
                        child: SizedBox(
                          width: 400,
                          height: 645,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Name',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  TextFormField(
                                      controller: _mnameController,
                                      decoration: InputDecoration(
                                        hintText: "Enter Name",
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(15.0),
                                        ),
                                        suffixIcon: Icon(
                                          Icons
                                              .drive_file_rename_outline_outlined,
                                          size: 20,
                                          color: Colors.black,
                                        ),
                                        // suffix: Text("@akgec.ac.in"),
                                      ),
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Name cannot be empty';
                                        }
                                        if (RegExp(
                                                r'^[a-zA-Z]+(?:\s[a-zA-Z]+)*$')
                                            .hasMatch(value)) {
                                          // na = true;
                                          return null;
                                        } else {
                                          return "Enter correct Name";
                                        }
                                      }),
                                  const SizedBox(height: 10.0),
                                  const Text(
                                    'Phone No',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  TextFormField(
                                      controller: _mphoneNoController,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        hintText: "Enter Phone No.",
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(15.0),
                                        ),
                                        suffixIcon: Icon(
                                          Icons.phone_outlined,
                                          size: 20,
                                          color: Colors.black,
                                        ),
                                        // suffix: Text("@akgec.ac.in"),
                                      ),
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
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
                                  const SizedBox(height: 10.0),
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
                                      height: 5,
                                    ),
                                    onChanged: (String? value) {
                                      setState(() {
                                        mbdropdownValue = value!;
                                      });
                                    },
                                    items: blist.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                  const SizedBox(height: 10.0),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(children: [
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
                                          height: 5,
                                        ),
                                        onChanged: (String? value) {
                                          setState(() {
                                            mdropdownValue = value!;
                                          });
                                        },
                                        items: list
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                      SizedBox(
                                        width: 8,
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
                                        items: ylist
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      )
                                    ]),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  const SizedBox(height: 10.0),
                                  const Text(
                                    'College Email',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      controller: _memailController,
                                      decoration: InputDecoration(
                                        hintText: "Enter Email",
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(15.0),
                                        ),
                                        suffixIcon: Icon(
                                          Icons.email_outlined,
                                          size: 20,
                                          color: Colors.black,
                                        ),
                                        // suffix: Text("@akgec.ac.in"),
                                      ),
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: (value) {
                                        value = value!.toLowerCase();
                                        if (value!.isEmpty) {
                                          return 'Email cannot be empty';
                                        } else {
                                          String mname =
                                              _mnameController.text.toString();
                                          if (mname.isEmpty) {
                                            return 'Name cannot be empty';
                                          }
                                          // print(mname.substring(
                                          //     0, mname.indexOf(" ")));
                                          int r = mname.indexOf(" ");
                                          String mans = "";
                                          if (r > 0) {
                                            mans = mname
                                                .substring(0, r)
                                                .toLowerCase();
                                          } else {
                                            mans = mname.toLowerCase();
                                          }
                                          int mp =
                                              ylist.indexOf(mydropdownValue);
                                          // print(mp);
                                          String msy = yylist[mp];
                                          // print(msy);
                                          int mk =
                                              blist.indexOf(mbdropdownValue);
                                          // print(mk);
                                          String msn = cslist[mk];
                                          // print(msn);
                                          if (msy == '22') {
                                            msn = '164';
                                          }
                                          if (RegExp(r"^" +
                                                  mans +
                                                  msy +
                                                  msn +
                                                  r"([0-9]{3})([-]?[dD]?)(@akgec\.ac\.in)$")
                                              .hasMatch(value)) {
                                            // cm = true;
                                            return null;
                                          } else {
                                            return "Enter correct College Email";
                                          }
                                        }
                                      }),
                                  const SizedBox(height: 10.0),
                                  const Text(
                                    'Roll No',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  TextFormField(
                                      controller: _mrollNoController,
                                      decoration: InputDecoration(
                                        hintText: "Enter Roll No.",
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(15.0),
                                        ),
                                        suffixIcon: Icon(
                                          Icons.numbers_outlined,
                                          size: 20,
                                          color: Colors.black,
                                        ),
                                        // suffix: Text("@akgec.ac.in"),
                                      ),
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Roll No. cannot be empty';
                                        }
                                        int mpp =
                                            ylist.indexOf(mydropdownValue);
                                        // print(mpp);
                                        String msyy = yylist[mpp];
                                        // print(msyy);
                                        int mtr =
                                            blist.indexOf(mbdropdownValue);
                                        // print(mtr);
                                        String mww = rlist[mtr];
                                        // print(mww);
                                        if (RegExp(r"^" +
                                                msyy +
                                                r"(0027)" +
                                                mww +
                                                r"([0-9]{4})$")
                                            .hasMatch(value)) {
                                          // rn = true;
                                          return null;
                                        } else {
                                          return "Enter correct Roll No.";
                                        }
                                      }),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                GestureDetector(
                  onTap: () {
                    if (!show) {
                      print(!show);
                      print(show);
                      if (formKey.currentState!.validate() &&
                          ydropdownValue != ylist.first &&
                          bdropdownValue != blist.last &&
                          dropdownValue != list.first) {
                        print("Validated");
                        // formKey.currentState!.save();
                        print(_mnameController.text);
                        print(_memailController.text);
                        print(_mrollNoController.text);
                        print(_mphoneNoController.text);
                        print(mdropdownValue);
                        print(mbdropdownValue);
                        print(mydropdownValue);
                      } else {
                        print("Not Validated");

                        setState(() {
                          cardHeight = true;
                        });
                        return showSnackBarr(
                            "Enter the above details properly first", context);
                      }
                    } else if (show) {
                      _memailController.clear();
                      _mrollNoController.clear();
                      _mphoneNoController.clear();
                      _mnameController.clear();
                      mbdropdownValue;
                    }
                    setState(() {
                      show = !show;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    child: Center(
                        child: Text(
                      show ? "Remove Team Member" : "Add Team Member",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                  ),
                ),
                const SizedBox(height: 10.0),

                Center(
                  child: ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        _loading = true;
                      });
                      var res = "Not Validated";
                      if ((_emailController.text == _memailController.text &&
                              _emailController.text.toString().isNotEmpty) ||
                          (_rollNoController.text == _mrollNoController.text &&
                              _rollNoController.text.toString().isNotEmpty) ||
                          (_phoneNoController.text ==
                                  _mphoneNoController.text &&
                              _phoneNoController.text.toString().isNotEmpty)) {
                        setState(() {
                          _loading = false;
                          res = "Duplicate Values";
                        });
                        return showSnackBarr(res, context);
                      } else if (formKey.currentState!.validate() &&
                          dropdownValue != list.first &&
                          ydropdownValue != ylist.first &&
                          bdropdownValue != blist.first &&
                          _phoneNoController != _mphoneNoController &&
                          _emailController != _memailController &&
                          _rollNoController != _mrollNoController) {
                        print(show);
                        print("Validated");
                        // ("Validated").log();
                        // print("hey");
                        // "hey".log();
                        // print(_teamNameController.text.toString());
                        // print(_emailController.text.toString());
                        // print(_nameController.text.toString());
                        // print(_phoneNoController.text.toString());
                        // print(_rollNoController.text.toString());
                        // print(bdropdownValue);
                        // print(dropdownValue);
                        // print(ydropdownValue);
                        // print(_memailController.text);
                        // print(_mnameController.text);
                        // print(_mphoneNoController.text.toString());
                        // print(_mrollNoController.text.toString());
                        // print(mbdropdownValue);
                        // print(mdropdownValue);
                        // print(mydropdownValue);

                        // if (show) {
                        res = await BV2RegistrationController().register(
                          teamname: _teamNameController.text,
                          lEmail: _emailController.text.toString(),
                          lName: _nameController.text.toString(),
                          lPhone: _phoneNoController.text.toString(),
                          lRoll: _rollNoController.text.toString(),
                          lBranch: bdropdownValue,
                          lHosteler: dropdownValue,
                          lYear: ydropdownValue,
                          mEmail: _memailController.text,
                          mBranch: mbdropdownValue,
                          mName: _mnameController.text,
                          mPhone: _mphoneNoController.text,
                          mRoll: _mrollNoController.text,
                          mHosteler: mdropdownValue,
                          mYear: mydropdownValue,
                        );
                        // } else {
                        //   res = await BV2RegistrationController()
                        //       .individualRegister(
                        //     _teamNameController.text.toString(),
                        //     _emailController.text.toString(),
                        //     _nameController.text.toString(),
                        //     _phoneNoController.text.toString(),
                        //     _rollNoController.text.toString(),
                        //     bdropdownValue,
                        //     dropdownValue,
                        //     ydropdownValue,
                        //   );
                        // }
                        print(res);

                        // res.log();
                        // showSnackBarr("Registered Successfully", context);
                        showAlertDialog(context, res);
                        ("Registered Successfully").log();
                      } else {
                        // showSnackBarr("Not registered", context);
                        print("1");
                        print(show);
                        print(formKey.currentState!.validate());
                        if (formKey.currentState!.validate() != true) {
                          res = "Not Validated";
                        } else if (bdropdownValue == blist.first) {
                          res = "Choose your branch";
                        } else if (dropdownValue == list.first) {
                          res = "Choose if you are hosteler or not";
                        } else if (ydropdownValue == ylist.first) {
                          res = "Choose your year";
                        } else if ((mbdropdownValue == blist.first &&
                            show == true)) {
                          res = "Choose your branch";
                        } else if ((mdropdownValue == list.first &&
                            show == true)) {
                          res = "Choose if you are hosteler or not";
                        } else if ((mydropdownValue == ylist.first &&
                            show == true)) {
                          res = "Choose your year";
                        }
                        showSnackBarr(res, context);
                        // ("Not registered").log();
                        print("Not Validated");
                        // ("Not Validated").log();
                      }
                      if (res == "Registered Successfully") {
                        _teamNameController.clear();
                        _emailController.clear();
                        _nameController.clear();
                        _phoneNoController.clear();
                        _rollNoController.clear();
                        _memailController.clear();
                        _mnameController.clear();
                        _mphoneNoController.clear();
                        _mrollNoController.clear();
                        setState(() {
                          dropdownValue = list.first;
                          ydropdownValue = ylist.first;
                          bdropdownValue = blist.first;
                          mdropdownValue = list.first;
                          mydropdownValue = ylist.first;
                          mbdropdownValue = blist.first;
                        });
                      }
                      setState(() {
                        _loading = false;
                      });
                    },
                    child: _loading
                        ? CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : const Text("Submit"),
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
