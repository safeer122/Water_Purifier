import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:water_purifier/Bloc/Login_screen/login_bloc.dart';
import 'package:water_purifier/Ui/services.dart';
import 'package:water_purifier/toast_message.dart';

import 'Bottomnavigation.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

bool _password = true;
TextEditingController employcode = TextEditingController();
TextEditingController password = TextEditingController();

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: 642.w,
              height: 600.h,
              decoration: BoxDecoration(
                  color: Color(0xff1256bc),
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50.r),
                      bottomLeft: Radius.circular(50.r))),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 250),
              child: Container(
                width: 350.w,
                height: 392.h,
                decoration: BoxDecoration(
                    color: Color(0xffF7F7F7),
                    borderRadius: BorderRadius.circular(24.r),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff8d8b8b),
                        offset: Offset(2, 6),
                        spreadRadius: -15,
                        blurRadius: 30,
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 80.w, top: 20.h),
                      child: Text(
                        "Login Account",
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff121212)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 38, top: 50.h),
                      child: SizedBox(
                        width: 260.w,
                        child: TextFormField(
                          controller: employcode,
                          decoration: InputDecoration(
                            hintText: "Employee code",

                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18.sp,
                              color: Color(0xffA5A5A5),
                            ),
                            prefixIcon: Icon(Icons.person_outline),
                            // Prefix icon (icon before text field)
                            prefixIconColor: Color(0xffA5A5A5),
                            // Default color of the prefix icon
                            focusedBorder: UnderlineInputBorder(
                              // Change color when focused
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 38.w, top: 33.h),
                      child: SizedBox(
                        width: 260.w,
                        child: TextFormField(
                          obscureText: _password,
                          controller: password,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color: Color(0xffA5A5A5)),
                            suffixIcon: IconButton(
                              icon: FaIcon(
                                _password == true
                                    ? FontAwesomeIcons.eye
                                    : FontAwesomeIcons.eyeSlash,
                                size: 18.h,
                                color: Color(0xffA5A5A5),
                              ),
                              onPressed: () {
                                setState(() {
                                  _password = !_password;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 55.w, top: 70.h),
                      child: BlocListener<LoginBloc, LoginState>(
                        listener: (context, state) {
                          if(state is LoginblocLoding){
                            print("Loding");

                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Center(
                                  child:
                                    CircularProgressIndicator(),
                                );
                              },
                            );
                          }
                          if(state is LoginblocLoded){
                            token(BlocProvider.of<LoginBloc>(context).logIn.accessToken.toString());
                            Navigator.of(context).pop();
                             Navigator.push(context,MaterialPageRoute(builder: (_)=>BottomNavigation()));
                             ToastMessage().toastmessage(message: "Login successful");
                            print("Loaded");
                          }
                          if(state is LoginblocError){
                            Navigator.of(context).pop();
                            print("Error");
                          }
                        },
                        child: GestureDetector(
                          onTap: () {
                            BlocProvider.of<LoginBloc>(context).add(
                              FetchLogin(
                                password: password.text,
                               user: employcode.text,

                              ),
                            );
                          },
                          child: Container(
                            width: 230.w,
                            height: 50.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xff1256BC),
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Text(
                              "LOG IN",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffF7F7F7)),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  void token(String token)async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("Token", token);
  }
}
