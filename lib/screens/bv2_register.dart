import 'dart:async';
import 'dart:developer' as devtools show log;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:registration/constants/registration_details_fields.dart';
import 'package:registration/controllers/bv2_registration_controller.dart';
import 'package:registration/widgets/text_form_field.dart';

extension Log on Object {
  void log() {
    devtools.log(toString());
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
  final TextEditingController _otpController = TextEditingController();
  final TextEditingController _motpController = TextEditingController();
  String mdropdownValue = list.first;
  String mydropdownValue = ylist.first;
  String mbdropdownValue = blist.first;
  String mgdropdownValue = glist.first;
  bool show = false;
  bool checkotp = false;
  bool mcheeek = false;
  bool mcheckotp = false;
  bool cardHeight = false;
  bool option = true;
  bool _loading = false;
  bool optloading = false;
  bool cheeek = false;
  bool _sendAllow = true;
  bool _msendAllow = true;
  String _timerText = "";
  String _mtimerText = "";
  String gdropdownValue = glist.first;
  String dropdownValue = list.first;
  String ydropdownValue = ylist.first;
  String bdropdownValue = blist.first;
  GlobalKey<FormState> formKey = GlobalKey();
  final _scrollController = ScrollController(
      // initialScrollOffset: -20
      );
  // bool _switch = true;
  double _height = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      // print(_scrollController.offset);
      if (_scrollController.offset > 240) {
        setState(() {
          // _switch = false;
          _height = 80;
        });
      } else if (_scrollController.offset > 80) {
        setState(() {
          // _switch = false;
          _height = (_scrollController.offset - 80) / 2;
        });
      } else {
        setState(() {
          // _switch = true;
          _height = 0;
        });
      }
    });
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                pinned: true,
                // expandedHeight: _height,
                floating: true,
                // backgroundColor: Colors.amber,
                title: Image.asset('asset/ghj.jpg', fit: BoxFit.fitWidth),
                centerTitle: true,
                titleSpacing: 0,
                // scrolledUnderElevation: 20,

                // bottom: PreferredSize(
                //   preferredSize: Size.fromHeight(-50),
                //   child: SizedBox(),
                // ),
                // flexibleSpace: const FlexibleSpaceBar(
                //   collapseMode: CollapseMode.parallax,
                // ),
                collapsedHeight: _height,
                toolbarHeight: _height,
              ),
              SliverAppBar(
                collapsedHeight: 0,
                toolbarHeight: 0,
                expandedHeight: 120,
                backgroundColor: Colors.transparent,
                elevation: 0,

                // scrolledUnderElevation: 20,
                pinned: false,
                centerTitle: false,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  background: Image.asset('asset/rm23.jpg', fit: BoxFit.cover),
                ),
              ),
              // SliverList(
              //   delegate: SliverChildBuilderDelegate(
              //         (context, index) => ListTile(
              //       title: Text('Item $index'),
              //     ),
              //     childCount: 30,
              //   ),
              // ),
              SliverPadding(
                padding: const EdgeInsets.all(16.0),
                sliver: SliverToBoxAdapter(
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
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
                            img: "asset/team1.png",
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
                        const Center(
                          child: Text(
                            'TEAM LEADER',
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
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        // icon: Icons
                                        //     .drive_file_rename_outline_outlined,
                                        img: "asset/user.png",
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Name cannot be empty';
                                          }
                                          if (RegExp(
                                                  r'^[a-zA-Z]+(?:\.\s)?[a-zA-Z]+(?:\s[a-zA-Z]+)*\s*$')
                                              .hasMatch(value)) {
                                            return null;
                                          } else {
                                            return "Enter correct Name";
                                          }
                                        },
                                      ),
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
                                          // icon: Icons.phone_outlined,
                                          img: "asset/phone.png",
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'Phone No. cannot be empty';
                                            }
                                            if (RegExp(
                                                    r'^(?:\+91|0)?[6789]\d{9}$')
                                                .hasMatch(value)) {
                                              return null;
                                            } else {
                                              return "Enter correct Phone No.";
                                            }
                                          }),
                                      const SizedBox(height: 10.0),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(children: [
                                          const Text(
                                            'Branch',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 40,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black38,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10, right: 10),
                                                child: DropdownButton<String>(
                                                  value: bdropdownValue,
                                                  // icon: const Icon(
                                                  //     Icons.arrow_downward),
                                                  icon: Image.asset(
                                                    "asset/arrow.png",
                                                    width: 25,
                                                    height: 30,
                                                  ),
                                                  elevation: 16,
                                                  underline: Container(
                                                    height: 5,
                                                  ),
                                                  onChanged: (String? value) {
                                                    setState(() {
                                                      bdropdownValue = value!;
                                                    });
                                                  },
                                                  items: blist.map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          const Text(
                                            'Gender',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 40,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black38,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10, right: 10),
                                                child: DropdownButton<String>(
                                                  value: gdropdownValue,
                                                  // icon: const Icon(
                                                  //     Icons.arrow_downward),
                                                  icon: Image.asset(
                                                    "asset/arrow.png",
                                                    width: 25,
                                                    height: 30,
                                                  ),
                                                  elevation: 16,
                                                  underline: Container(
                                                    height: 5,
                                                  ),
                                                  onChanged: (String? value) {
                                                    setState(() {
                                                      gdropdownValue = value!;
                                                    });
                                                  },
                                                  items: glist.map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),
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
                                          SizedBox(
                                            height: 40,
                                            width: 100,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                // color:Colors.lightGreen, //background color of dropdown button
                                                border: Border.all(
                                                    color: Colors.black38,
                                                    width:
                                                        1), //border of dropdown button
                                                borderRadius: BorderRadius.circular(
                                                    15), //border raiuds of dropdown button
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10, right: 10),
                                                child: DropdownButton<String>(
                                                  value: dropdownValue,
                                                  icon: Image.asset(
                                                    "asset/arrow.png",
                                                    width: 25,
                                                    height: 30,
                                                  ),
                                                  elevation: 16,
                                                  underline: Container(
                                                    height: 5,
                                                  ),
                                                  onChanged: (String? value) {
                                                    setState(() {
                                                      dropdownValue = value!;
                                                    });
                                                  },
                                                  items: list.map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Text(
                                            'Year',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 40,
                                            width: 100,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                // color:Colors.lightGreen, //background color of dropdown button
                                                border: Border.all(
                                                    color: Colors.black38,
                                                    width:
                                                        1), //border of dropdown button
                                                borderRadius: BorderRadius.circular(
                                                    15), //border raiuds of dropdown button
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 10, right: 10),
                                                child: DropdownButton<String>(
                                                  value: ydropdownValue,
                                                  icon: Image.asset(
                                                    "asset/arrow.png",
                                                    width: 25,
                                                    height: 30,
                                                  ),
                                                  elevation: 16,
                                                  disabledHint:
                                                      Text(ydropdownValue),
                                                  underline: Container(
                                                    height: 2,
                                                  ),
                                                  onChanged: (String? value) {
                                                    setState(() {
                                                      ydropdownValue = value!;
                                                    });
                                                  },
                                                  items: ylist.map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                ),
                                              ),
                                            ),
                                          )
                                        ]),
                                      ),
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
                                        img: "asset/hashtag.png",
                                        // icon: Icons.numbers_outlined,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Roll No. cannot be empty';
                                          } else if (gdropdownValue ==
                                              'Select Gender') {
                                            return 'Select Branch';
                                          } else if (bdropdownValue ==
                                              'Select Branch') {
                                            return 'Select Branch';
                                          } else if (ydropdownValue ==
                                              'Choose') {
                                            return 'Select Year';
                                          }
                                          if (RegExp(r"^(21|22)0027\d{7}$")
                                              .hasMatch(value)) {
                                            return null;
                                          } else {
                                            return "Enter correct Roll No.";
                                          }
                                        },
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
                                        height: 6,
                                      ),
                                      textFormFieldWidget(
                                          controller: _emailController,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          hintText: "Enter Email",
                                          // icon: Icons.email_outlined,
                                          img: "asset/mail.png",
                                          validator: (value) {
                                            value = value!.toLowerCase();
                                            if (value.isEmpty) {
                                              return 'Email cannot be empty';
                                            } else {
                                              String name = _nameController.text
                                                  .toString();
                                              if (name.isEmpty) {
                                                return 'Name cannot be empty';
                                              } else if (gdropdownValue ==
                                                  'Select Gender') {
                                                return 'Select Branch';
                                              } else if (bdropdownValue ==
                                                  'Select Branch') {
                                                return 'Select Branch';
                                              } else if (ydropdownValue ==
                                                  'Choose') {
                                                return 'Select Year';
                                              }
                                              String w = name.trim();
                                              int len = w.length;
                                              int r = w.indexOf(" ");
                                              int kl = w.lastIndexOf(" ");
                                              print(r);
                                              print(kl);
                                              print(len);
                                              String ans = "";
                                              String ans1 = "";
                                              String ans2 = "";
                                              if (r > 0) {
                                                ans = w
                                                    .substring(0, r)
                                                    .toLowerCase()
                                                    .trim();
                                                print(ans);
                                                if (r == kl) {
                                                  ans1 = w
                                                      .substring(kl + 1, len)
                                                      .toLowerCase()
                                                      .trim();
                                                  print(ans1);
                                                }
                                                if (r != kl) {
                                                  ans1 = w
                                                      .substring(r + 1, kl)
                                                      .toLowerCase()
                                                      .trim();
                                                  print(ans1);
                                                  ans2 = w
                                                      .substring(kl + 1)
                                                      .toLowerCase()
                                                      .trim();
                                                  print(ans2);
                                                }
                                              } else {
                                                ans = name.toLowerCase().trim();
                                              }
                                              if (ans != "mohammad" &&
                                                  ans != "md." &&
                                                  ans != "mohd") {
                                                if (RegExp(r"^" +
                                                            ans +
                                                            r"(21|22)[A-Za-z0-9._%+-]+@akgec\.ac\.in$")
                                                        .hasMatch(value) ||
                                                    RegExp(r"^" +
                                                            ans1 +
                                                            r"(21|22)[A-Za-z0-9._%+-]+@akgec\.ac\.in$")
                                                        .hasMatch(value) ||
                                                    RegExp(r"^" +
                                                            ans2 +
                                                            r"(21|22)[A-Za-z0-9._%+-]+@akgec\.ac\.in$")
                                                        .hasMatch(value)) {
                                                  cheeek = true;
                                                  return null;
                                                } else {
                                                  cheeek = false;
                                                  return "Enter correct College Email";
                                                }
                                              } else {
                                                if (RegExp(
                                                        r"^.*@akgec\.ac\.in$")
                                                    .hasMatch(value)) {
                                                  cheeek = true;
                                                  return null;
                                                } else {
                                                  cheeek = false;
                                                  return "Enter correct College Email";
                                                }
                                              }
                                            }
                                          }),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Visibility(
                                          visible: cheeek,
                                          child: Row(children: [
                                            ElevatedButton(
                                              onPressed: !_sendAllow
                                                  ? null
                                                  : () {
                                                      if (formKey.currentState!
                                                          .validate()) {
                                                        sendEmail(
                                                            _emailController
                                                                .text,
                                                            context);
                                                        setState(() {
                                                          _sendAllow = false;
                                                          checkotp = true;
                                                        });
                                                        timer();
                                                      } else {
                                                        showSnackBarr(
                                                            "Enter the details properly",
                                                            context);
                                                      }
                                                    },
                                              child: Text(
                                                checkotp
                                                    ? _sendAllow
                                                        ? "Resend OTP"
                                                        : _timerText
                                                    : "Send OTP",
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                            ),
                                            const SizedBox(
                                              width: 25,
                                            ),
                                            SizedBox(
                                              width: 150,
                                              height: 35,
                                              child: Pinput(
                                                length: 4,
                                                controller: _otpController,
                                                keyboardType:
                                                    TextInputType.number,
                                                textInputAction:
                                                    TextInputAction.next,
                                                pinputAutovalidateMode:
                                                    PinputAutovalidateMode
                                                        .onSubmit,
                                              ),
                                            )
                                          ])),
                                    ]),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Visibility(
                          visible: show,
                          child: Column(children: [
                            const SizedBox(height: 15.0),
                            const Center(
                              child: Text(
                                'MEMBER 2',
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
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Name',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          textFormFieldWidget(
                                              keyboardType: TextInputType.name,
                                              hintText: "Enter your name",
                                              controller: _mnameController,
                                              img: "asset/user.png",
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Name cannot be empty';
                                                }
                                                if (RegExp(
                                                        r'^[a-zA-Z]+(?:\s[a-zA-Z]+)*\s*$')
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
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          textFormFieldWidget(
                                              controller: _mphoneNoController,
                                              keyboardType:
                                                  TextInputType.number,
                                              hintText: "Enter Phone No.",
                                              img: "asset/phone.png",
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Phone No. cannot be empty';
                                                }
                                                if (RegExp(
                                                        r'^(?:\+91|0)?[6789]\d{9}$')
                                                    .hasMatch(value)) {
                                                  // pn = true;
                                                  return null;
                                                } else {
                                                  return "Enter correct Phone No.";
                                                }
                                              }),
                                          const SizedBox(height: 10.0),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(children: [
                                              const Text(
                                                'Branch',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                                child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black38,
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10, right: 10),
                                                    child:
                                                        DropdownButton<String>(
                                                      value: mbdropdownValue,
                                                      icon: Image.asset(
                                                        "asset/arrow.png",
                                                        width: 25,
                                                        height: 30,
                                                      ),
                                                      elevation: 16,
                                                      underline: Container(
                                                        height: 5,
                                                      ),
                                                      onChanged:
                                                          (String? value) {
                                                        setState(() {
                                                          mbdropdownValue =
                                                              value!;
                                                        });
                                                      },
                                                      items: blist.map<
                                                              DropdownMenuItem<
                                                                  String>>(
                                                          (String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(value),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Text(
                                                'Gender',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                                child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black38,
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10, right: 10),
                                                    child:
                                                        DropdownButton<String>(
                                                      value: mgdropdownValue,
                                                      // icon: const Icon(
                                                      //     Icons.arrow_downward),
                                                      icon: Image.asset(
                                                        "asset/arrow.png",
                                                        width: 25,
                                                        height: 30,
                                                      ),
                                                      elevation: 16,
                                                      underline: Container(
                                                        height: 5,
                                                      ),
                                                      onChanged:
                                                          (String? value) {
                                                        setState(() {
                                                          mgdropdownValue =
                                                              value!;
                                                        });
                                                      },
                                                      items: glist.map<
                                                              DropdownMenuItem<
                                                                  String>>(
                                                          (String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(value),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]),
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
                                              SizedBox(
                                                height: 40,
                                                width: 100,
                                                child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black38,
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10, right: 10),
                                                    child:
                                                        DropdownButton<String>(
                                                      value: mdropdownValue,
                                                      icon: Image.asset(
                                                        "asset/arrow.png",
                                                        width: 25,
                                                        height: 30,
                                                      ),
                                                      elevation: 16,
                                                      underline: Container(
                                                        height: 5,
                                                      ),
                                                      onChanged:
                                                          (String? value) {
                                                        setState(() {
                                                          mdropdownValue =
                                                              value!;
                                                        });
                                                      },
                                                      items: list.map<
                                                              DropdownMenuItem<
                                                                  String>>(
                                                          (String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(value),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              const Text(
                                                'Year',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 40,
                                                width: 100,
                                                child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.black38,
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10, right: 10),
                                                    child:
                                                        DropdownButton<String>(
                                                      value: mydropdownValue,
                                                      icon: Image.asset(
                                                        "asset/arrow.png",
                                                        width: 25,
                                                        height: 30,
                                                      ),
                                                      elevation: 16,
                                                      underline: Container(
                                                        height: 2,
                                                      ),
                                                      onChanged:
                                                          (String? value) {
                                                        setState(() {
                                                          mydropdownValue =
                                                              value!;
                                                        });
                                                      },
                                                      items: ylist.map<
                                                              DropdownMenuItem<
                                                                  String>>(
                                                          (String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(value),
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ]),
                                          ),
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
                                              controller: _mrollNoController,
                                              keyboardType:
                                                  TextInputType.number,
                                              img: "asset/hashtag.png",
                                              hintText: "Enter Roll No.",
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Roll No. cannot be empty';
                                                } else if (gdropdownValue ==
                                                    'Select Gender') {
                                                  return 'Select Branch';
                                                } else if (bdropdownValue ==
                                                    'Select Branch') {
                                                  return 'Select Branch';
                                                } else if (ydropdownValue ==
                                                    'Choose') {
                                                  return 'Select Year';
                                                }
                                                int mpp = ylist
                                                    .indexOf(mydropdownValue);
                                                String msyy = yylist[mpp];
                                                int mtr = blist
                                                    .indexOf(mbdropdownValue);
                                                String mww = rlist[mtr];
                                                if (RegExp(
                                                        r"^(21|22)0027\d{7}$")
                                                    .hasMatch(value)) {
                                                  // rn = true;
                                                  return null;
                                                } else {
                                                  return "Enter correct Roll No.";
                                                }
                                              }),
                                          const SizedBox(height: 10.0),
                                          const Text(
                                            'College Email',
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          textFormFieldWidget(
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              controller: _memailController,
                                              hintText: "Enter Email",
                                              img: "asset/mail.png",
                                              validator: (value) {
                                                value = value!.toLowerCase();
                                                if (value.isEmpty) {
                                                  return 'Email cannot be empty';
                                                } else {
                                                  String mname =
                                                      _mnameController.text
                                                          .toString();
                                                  if (mname.isEmpty) {
                                                    return 'Name cannot be empty';
                                                  } else if (mgdropdownValue ==
                                                      'Select Gender') {
                                                    return 'Select Branch';
                                                  } else if (mbdropdownValue ==
                                                      'Select Branch') {
                                                    return 'Select Branch';
                                                  } else if (mydropdownValue ==
                                                      'Choose') {
                                                    return 'Select Year';
                                                  }

                                                  String w = mname.trim();
                                                  int len = w.length;
                                                  int r = w.indexOf(" ");
                                                  int kl = w.lastIndexOf(" ");
                                                  print(r);
                                                  print(kl);
                                                  print(len);
                                                  String mans = "";
                                                  String mans1 = "";
                                                  String mans2 = "";
                                                  if (r > 0) {
                                                    mans = mname
                                                        .substring(0, r)
                                                        .toLowerCase()
                                                        .trim();
                                                    print(mans);
                                                    if (r == kl) {
                                                      mans1 = w
                                                          .substring(
                                                              kl + 1, len)
                                                          .toLowerCase()
                                                          .trim();
                                                      print(mans1);
                                                    }
                                                    if (r != kl) {
                                                      mans1 = w
                                                          .substring(r + 1, kl)
                                                          .toLowerCase()
                                                          .trim();
                                                      print(mans1);
                                                      mans2 = w
                                                          .substring(kl + 1)
                                                          .toLowerCase()
                                                          .trim();
                                                      print(mans2);
                                                    }
                                                  } else {
                                                    mans = mname
                                                        .toLowerCase()
                                                        .trim();
                                                  }
                                                  if (mans != "mohammad" &&
                                                      mans != "md." &&
                                                      mans != "mohd") {
                                                    if (RegExp(r"^" +
                                                                mans +
                                                                r"(21|22)[A-Za-z0-9._%+-]+@akgec\.ac\.in$")
                                                            .hasMatch(value) ||
                                                        RegExp(r"^" +
                                                                mans1 +
                                                                r"(21|22)[A-Za-z0-9._%+-]+@akgec\.ac\.in$")
                                                            .hasMatch(value) ||
                                                        RegExp(r"^" +
                                                                mans2 +
                                                                r"(21|22)[A-Za-z0-9._%+-]+@akgec\.ac\.in$")
                                                            .hasMatch(value)) {
                                                      // cm = true;
                                                      mcheeek = true;
                                                      return null;
                                                    } else {
                                                      mcheeek = false;
                                                      return "Enter correct College Email";
                                                    }
                                                  } else {
                                                    if (RegExp(
                                                            r"^.*@akgec\.ac\.in$")
                                                        .hasMatch(value)) {
                                                      mcheeek = true;
                                                      return null;
                                                    } else {
                                                      mcheeek = false;
                                                      return "Enter correct College Email";
                                                    }
                                                  }
                                                }
                                              }),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Visibility(
                                              visible: mcheeek,
                                              child: Row(children: [
                                                ElevatedButton(
                                                    onPressed: !_msendAllow
                                                        ? null
                                                        : () {
                                                            if (formKey
                                                                .currentState!
                                                                .validate()) {
                                                              sendEmail(
                                                                  _memailController
                                                                      .text,
                                                                  context);
                                                              // Timer(
                                                              //     const Duration(
                                                              //         minutes: 1),
                                                              //     () {
                                                              //   setState(() {
                                                              //     checkotp = false;
                                                              //   });
                                                              // });
                                                              setState(() {
                                                                _msendAllow =
                                                                    false;
                                                                mcheckotp =
                                                                    true;
                                                              });
                                                              mtimer();
                                                            }
                                                          },
                                                    child: Text(
                                                      mcheckotp
                                                          ? _msendAllow
                                                              ? "Resend Otp"
                                                              : _mtimerText
                                                          : "Send Otp",
                                                    ),
                                                    style: ElevatedButton.styleFrom(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)))),
                                                const SizedBox(
                                                  width: 25,
                                                ),
                                                SizedBox(
                                                  width: 150,
                                                  height: 35,
                                                  child: Pinput(
                                                    length: 4,
                                                    controller: _motpController,
                                                  ),
                                                )
                                              ])),
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
                              if (formKey.currentState!.validate() &&
                                  ydropdownValue != ylist.first &&
                                  bdropdownValue != blist.first &&
                                  dropdownValue != list.first &&
                                  gdropdownValue != glist.first) {
                                setState(() {
                                  show = !show;
                                });
                              } else {
                                setState(() {
                                  cardHeight = true;
                                });
                                showSnackBarr(
                                    "Enter the above details properly first",
                                    context);
                              }
                            } else {
                              mbdropdownValue = blist.first;
                              mgdropdownValue = glist.first;
                              mydropdownValue = ylist.first;
                              mdropdownValue = list.first;
                              _memailController.clear();
                              _mrollNoController.clear();
                              _mphoneNoController.clear();
                              _mnameController.clear();
                              _motpController.clear();
                              setState(() {
                                show = !show;
                              });
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: 45,
                            child: Center(
                                child: Text(
                              show ? "Remove Team Member" : "Add Team Member",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18),
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
                                var res =
                                    "Please fill the above details properly first";
                                if (_emailController.text ==
                                        _memailController.text &&
                                    _emailController.text
                                        .toString()
                                        .isNotEmpty) {
                                  setState(() {
                                    _loading = false;
                                    res = "Duplicate Email";
                                  });
                                  return showSnackBarr(res, context);
                                } else if (_rollNoController.text ==
                                        _mrollNoController.text &&
                                    _rollNoController.text
                                        .toString()
                                        .isNotEmpty) {
                                  setState(() {
                                    _loading = false;
                                    res = "Duplicate Roll No.";
                                  });
                                  return showSnackBarr(res, context);
                                } else if (_phoneNoController.text ==
                                        _mphoneNoController.text &&
                                    _phoneNoController.text
                                        .toString()
                                        .isNotEmpty) {
                                  setState(() {
                                    _loading = false;
                                    res = "Duplicate Phone No.";
                                  });
                                  return showSnackBarr(res, context);
                                } else if (formKey.currentState!.validate() &&
                                    (_otpController.text.isEmpty ||
                                        _otpController.text.length < 4)) {
                                  setState(() {
                                    _loading = false;
                                    res = "Enter the OTP";
                                  });
                                  return showSnackBarr(res, context);
                                } else if (formKey.currentState!.validate() &&
                                    ((_motpController.text.isEmpty &&
                                            _motpController.text.length < 4) &&
                                        show == true)) {
                                  setState(() {
                                    _loading = false;
                                    res = "Enter the OTP";
                                  });
                                  print(formKey.currentState!.validate());
                                  return showSnackBarr(res, context);
                                } else if (formKey.currentState!.validate() &&
                                    dropdownValue != list.first &&
                                    ydropdownValue != ylist.first &&
                                    bdropdownValue != blist.first &&
                                    gdropdownValue != glist.first &&
                                    ((mbdropdownValue != blist.first &&
                                            mdropdownValue != list.first &&
                                            mydropdownValue != ylist.first &&
                                            mgdropdownValue != glist.first) ^
                                        (!show))) {
                                  bool host = false;
                                  if (dropdownValue == "Yes") {
                                    setState(() {
                                      host = true;
                                    });
                                  } else if (dropdownValue == "No") {
                                    setState(() {
                                      host = false;
                                    });
                                  }
                                  bool mhost = false;
                                  if (mdropdownValue == "Yes") {
                                    setState(() {
                                      mhost = true;
                                    });
                                  } else if (mdropdownValue == "No") {
                                    setState(() {
                                      mhost = false;
                                    });
                                  }
                                  print(bdropdownValue);
                                  print(mbdropdownValue);
                                  print(_teamNameController.text);
                                  print(_nameController.text.toString());
                                  print(_emailController.text.toString());
                                  print(int.parse(_otpController.text));
                                  print(host);
                                  print(int.parse(ydropdownValue));
                                  print(bdropdownValue);
                                  print(int.parse(_rollNoController.text));
                                  print(int.parse(_phoneNoController.text));
                                  if (show == true) {
                                    res = await BV2RegistrationController()
                                        .teamRegister(
                                            _teamNameController.text,
                                            _nameController.text.toString(),
                                            gdropdownValue,
                                            _emailController.text.toString(),
                                            int.parse(
                                                _otpController.text.toString()),
                                            host,
                                            int.parse(ydropdownValue),
                                            bdropdownValue,
                                            int.parse(_rollNoController.text
                                                .toString()),
                                            int.parse(_phoneNoController.text
                                                .toString()),
                                            _mnameController.text,
                                            mgdropdownValue,
                                            _memailController.text,
                                            int.parse(_motpController.text),
                                            mhost,
                                            int.parse(mydropdownValue),
                                            mbdropdownValue,
                                            int.parse(_mrollNoController.text),
                                            int.parse(
                                                _mphoneNoController.text));
                                  } else {
                                    res = await BV2RegistrationController()
                                        .individualRegister(
                                            _teamNameController.text,
                                            _nameController.text.toString(),
                                            gdropdownValue,
                                            _emailController.text.toString(),
                                            int.parse(
                                                _otpController.text.toString()),
                                            host,
                                            int.parse(ydropdownValue),
                                            bdropdownValue,
                                            int.parse(_rollNoController.text
                                                .toString()),
                                            int.parse(_phoneNoController.text
                                                .toString()));
                                  }
                                  (res).log();
                                  if (!mounted) return;
                                  showAlertDialog(context, res,
                                      _teamNameController.text.toString());
                                  ("Registered Successfully").log();
                                } else {
                                  if (formKey.currentState!.validate() &&
                                      (_otpController.text.isEmpty ||
                                          _otpController.text.length < 4)) {
                                    res = "kjhj";
                                  } else if (formKey.currentState!.validate() !=
                                      true) {
                                    res = "Please correct the above details";
                                  } else if (bdropdownValue == blist.first) {
                                    res = "Choose your branch";
                                  } else if (gdropdownValue == glist.first) {
                                    res = "Choose your Gender";
                                  } else if (dropdownValue == list.first) {
                                    res = "Choose if you are hosteler or not";
                                  } else if (ydropdownValue == ylist.first) {
                                    res = "Choose your year";
                                  } else if ((mbdropdownValue == blist.first &&
                                      show == true)) {
                                    res = "Choose your branch";
                                  } else if (mgdropdownValue == glist.first) {
                                    res = "Choose your Gender";
                                  } else if ((mdropdownValue == list.first &&
                                      show == true)) {
                                    res = "Choose if you are hosteler or not";
                                  } else if ((mydropdownValue == ylist.first &&
                                      show == true)) {
                                    res = "Choose your year";
                                  }
                                  showSnackBarr(res, context);
                                }
                                if (res == "Registration successfull") {
                                  _teamNameController.clear();
                                  _emailController.clear();
                                  _nameController.clear();
                                  _phoneNoController.clear();
                                  _rollNoController.clear();
                                  _memailController.clear();
                                  _mnameController.clear();
                                  _mphoneNoController.clear();
                                  _mrollNoController.clear();
                                  _otpController.clear();
                                  _motpController.clear();
                                  setState(() {
                                    dropdownValue = list.first;
                                    ydropdownValue = ylist.first;
                                    gdropdownValue = glist.first;
                                    mgdropdownValue = glist.first;
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
                                  ? SizedBox(
                                      height: 15,
                                      width: 15,
                                      child: const CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    )
                                  : const Text("SUBMIT"),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  void timer() {
    int ref = 29;

    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      // final DateTime now = DateTime.now();
      if (0 == ref) {
        // cancel the timer
        _sendAllow = true;
        timer.cancel();
      }
      setState(() {
        _timerText = "${0}:${ref--}";
      });
    });
  }

  void mtimer() {
    int ref = 29;

    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      // final DateTime now = DateTime.now();
      if (0 == ref) {
        // cancel the timer
        _msendAllow = true;
        timer.cancel();
      }
      setState(() {
        _mtimerText = "${0}:${ref--}";
      });
    });
  }

  sendEmail(String email, BuildContext context) async {
    try {
      Response res;
      Dio dio = Dio();
      res = await dio.post("http://3.6.75.26:5000/send_email", data: {
        "email": email,
      });
      print(res.statusCode);
      print(res.data);
      showSnackBarr(res.data["message"], context);
      return res.data["message"];
    } on DioError catch (e) {
      print('Caught an error in API call!');
      if (e.type == DioErrorType.connectionTimeout) {
        return ("Please wait for a moment");
      }
      if (e.type == DioErrorType.receiveTimeout) {
        return ("Please wait for sometime");
      }
      print('e is: ${e.toString()}');
    }
  }
}
